import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.dart';
import 'package:marvel_knowledge_compendium/core/style/color_tokens.dart';
import 'package:marvel_knowledge_compendium/core/style/core_dimensions.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_wrapper.dart';
import 'package:marvel_knowledge_compendium/features/characters/presentation/blocs/bloc.dart';
import 'package:marvel_knowledge_compendium/features/characters/presentation/widgets/characters_page_list_view.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_search_app_bar.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_text.dart';
import 'package:marvel_knowledge_compendium/res/strings.dart' as strings;

const int _showingFloatingActionButtonScrollExtent = 2500;
const int _overscrollAnimatedContainerDurationInMilliseconds = 200;
const int _overscrollAnimatedOpacityDurationInMilliseconds = 700;
const int _scrollToTopButtonDurationInMilliseconds = 500;
const int _scrollingEndedDelayDurationInMilliseconds = 500;

class CharactersPage extends StatefulWidget {
  final CharacterDataWrapper unfilteredCharacterDataWrapper;
  final int limit;

  const CharactersPage({
    required this.unfilteredCharacterDataWrapper,
    required this.limit,
    Key? key,
  }) : super(key: key);

  @override
  State<CharactersPage> createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  final CharactersPageBloc _bloc = getIt<CharactersPageBloc>();
  final ScrollController _controller = ScrollController();

  bool _showScrollToTopButton = false;
  bool _isScrolling = false;
  bool _showOverscrollContainer = false;

  void initState() {
    super.initState();
    _bloc.add(CharactersPageSaveInitialUnfilteredDataEvent(widget.unfilteredCharacterDataWrapper.data!));
  }

  @override
  Widget build(_) {
    return Scaffold(
      backgroundColor: ColorTokens.brandSecondaryColorDarker,
      body: BlocBuilder<CharactersPageBloc, CharactersPageState>(
        bloc: _bloc,
        builder: (_, CharactersPageState state) {
          if (state.status == CharactersPageStateStatus.initial) {
            return const Center(child: const CircularProgressIndicator(color: ColorTokens.brandPrimaryColor));
          } else if (state.isCharactersWrapperLoaded || state.isLoadingNewCharacters || state.wereCharactersSearched) {
            return NotificationListener<ScrollNotification>(
              onNotification: _onScrollNotification,
              child: RawScrollbar(
                thumbColor: ColorTokens.brandPrimaryColor,
                thumbVisibility: true,
                trackVisibility: true,
                thickness: CoreDimensions.paddingM,
                interactive: true,
                controller: _controller,
                child: CustomScrollView(
                  controller: _controller,
                  slivers: [
                    SliverPersistentHeader(
                      delegate: MKCSearchAppBar(onChanged: _onSearchAppBarFieldChanged),
                      pinned: true,
                    ),
                    CharactersPageListView(
                      isLoadingNewCharacters: _bloc.state.isLoadingNewCharacters,
                      areMoreCharactersAvailable: _bloc.state.areMoreCharactersAvailable,
                      wereCharactersSearched: _bloc.state.wereCharactersSearched,
                      characterDataContainer: _bloc.state.characterDataContainer!,
                      onNotification: _onScrollNotification,
                    ),
                    if (!_bloc.state.areMoreCharactersAvailable && _isScrolling)
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: _overscrollAnimatedContainerDurationInMilliseconds),
                          height: _showOverscrollContainer ? CoreDimensions.paddingXL : 0,
                          child: AnimatedOpacity(
                            duration: const Duration(milliseconds: _overscrollAnimatedOpacityDurationInMilliseconds),
                            opacity: _showOverscrollContainer ? 1 : 0,
                            child: Column(
                              children: [
                                const Flexible(child: SizedBox(height: CoreDimensions.paddingXM)),
                                Flexible(
                                  child: MKCText.body(
                                    strings.charactersPageOverscrollNoMoreCharactersText,
                                    color: ColorTokens.white,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                  ],
                ),
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AnimatedSlide(
        duration: const Duration(milliseconds: _scrollToTopButtonDurationInMilliseconds),
        offset: Offset(0, _showScrollToTopButton ? 0 : 3),
        child: SizedBox(
          width: CoreDimensions.paddingXL,
          height: CoreDimensions.paddingXL,
          child: FloatingActionButton(
            focusColor: ColorTokens.black,
            hoverColor: ColorTokens.black,
            splashColor: ColorTokens.black,
            onPressed: _scrollToTop,
            child: const Icon(
              Icons.arrow_circle_up,
              color: ColorTokens.black,
              size: CoreDimensions.paddingML,
            ),
            backgroundColor: ColorTokens.brandPrimaryColor,
          ),
        ),
      ),
    );
  }

  bool _onScrollNotification(ScrollNotification notification) {
    if (notification is ScrollStartNotification) {
      _animationsOnScrollStarted();
    }
    if (notification is ScrollEndNotification) {
      _animationsOnScrollEnded();
      // Whenever user scrolls to the bottom and not all characters are loaded, fetch more
      if (_controller.position.extentAfter == 0 &&
          _bloc.state.areMoreCharactersAvailable &&
          !_bloc.state.isLoadingNewCharacters &&
          !_bloc.state.wereCharactersSearched) {
        _bloc.add(
          CharactersPageLoadMoreCharactersEvent(_bloc.state.characterDataContainer!.results!.length),
        );
      }
      if (_controller.position.extentBefore > _showingFloatingActionButtonScrollExtent && !_showScrollToTopButton) {
        // Show FAB after scrolling under some extent
        setState(() => _showScrollToTopButton = true);
      }
      if (_controller.position.extentBefore < _showingFloatingActionButtonScrollExtent && _showScrollToTopButton) {
        // Hide FAB after scrolling under some extent
        setState(() => _showScrollToTopButton = false);
      }
    }
    return false;
  }

  void _scrollToTop() {
    if (_controller.hasClients) {
      _controller.jumpTo(0);
      setState(() => _showScrollToTopButton = false);
    }
  }

  void _onSearchAppBarFieldChanged(String name) {
    _bloc.add(CharactersPageSearchCharacterByNameEvent(name));
  }

  void _animationsOnScrollStarted() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _showScrollToTopButton = false;
        _showOverscrollContainer = true;
        _isScrolling = true;
      });
    });
  }

  void _animationsOnScrollEnded() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _showOverscrollContainer = false;
        Future.delayed(const Duration(milliseconds: _scrollingEndedDelayDurationInMilliseconds), () {
          _isScrolling = false;
          _showScrollToTopButton = true;
        });
      });
    });
  }
}

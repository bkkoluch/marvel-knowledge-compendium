import 'package:flutter/material.dart';
import 'package:marvel_knowledge_compendium/core/shared_entities/data_container.dart';
import 'package:marvel_knowledge_compendium/core/style/color_tokens.dart';
import 'package:marvel_knowledge_compendium/core/style/core_dimensions.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_page_list_view.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_search_app_bar.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_text.dart';

const int _showingFloatingActionButtonScrollExtent = 2500;
const int _overscrollAnimatedContainerDurationInMilliseconds = 200;
const int _overscrollAnimatedOpacityDurationInMilliseconds = 700;
const int _scrollToTopButtonDurationInMilliseconds = 500;
const int _scrollingEndedDelayDurationInMilliseconds = 500;

class MKCSliverSearchAppBarAndListPage<C, S, T> extends StatefulWidget {
  final C cubit;
  final VoidCallback onPageInit;
  final VoidCallback onLoadMoreResults;
  final Function(String) onSearch;
  final bool isInitialState;
  final bool isWrapperLoaded;
  final bool isLoadingNewResults;
  final bool wereResultsSearched;
  final bool areMoreResultsAvailable;
  final String searchAppBarText;
  final String pageOverscrollNoMoreResultsText;
  final String emptySearchResultsText;
  final DataContainer<T>? dataContainer;
  final Widget Function(T) listItem;

  const MKCSliverSearchAppBarAndListPage({
    required this.cubit,
    required this.onPageInit,
    required this.onLoadMoreResults,
    required this.onSearch,
    required this.isInitialState,
    required this.isWrapperLoaded,
    required this.isLoadingNewResults,
    required this.wereResultsSearched,
    required this.searchAppBarText,
    required this.pageOverscrollNoMoreResultsText,
    required this.emptySearchResultsText,
    required this.areMoreResultsAvailable,
    required this.dataContainer,
    required this.listItem,
    Key? key,
  }) : super(key: key);

  @override
  State<MKCSliverSearchAppBarAndListPage> createState() => _MKCSliverSearchAppBarAndListPageState<C, S, T>();
}

class _MKCSliverSearchAppBarAndListPageState<C, S, T> extends State<MKCSliverSearchAppBarAndListPage> {
  final ScrollController _controller = ScrollController();

  bool _showScrollToTopButton = false;
  bool _isScrolling = false;
  bool _showOverscrollContainer = false;

  void initState() {
    super.initState();
    widget.onPageInit();
  }

  @override
  Widget build(_) {
    return Scaffold(
      backgroundColor: ColorTokens.brandSecondaryColorDarker,
      body: Builder(
        builder: (_) {
          if (widget.isInitialState) {
            return const Center(child: const CircularProgressIndicator(color: ColorTokens.brandPrimaryColor));
          }
          if (widget.isWrapperLoaded || widget.isLoadingNewResults || widget.wereResultsSearched) {
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
                      delegate: MKCSearchAppBar(
                        onBackArrowTapped: Navigator.of(context).pop,
                        onChanged: _onSearchAppBarFieldChanged,
                        searchAppBarText: widget.searchAppBarText,
                      ),
                      pinned: true,
                    ),
                    MKCPageListView<T>(
                      isLoadingNewCharacters: widget.isLoadingNewResults,
                      areMoreCharactersAvailable: widget.areMoreResultsAvailable,
                      wereCharactersSearched: widget.wereResultsSearched,
                      dataContainer: widget.dataContainer as DataContainer<T>,
                      onNotification: _onScrollNotification,
                      listItem: widget.listItem,
                      emptySearchResultsText: widget.emptySearchResultsText,
                    ),
                    if (!widget.areMoreResultsAvailable && _isScrolling)
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
                                    widget.pageOverscrollNoMoreResultsText,
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
          widget.areMoreResultsAvailable &&
          !widget.isLoadingNewResults &&
          !widget.wereResultsSearched) {
        widget.onLoadMoreResults();
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
    widget.onSearch(name);
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

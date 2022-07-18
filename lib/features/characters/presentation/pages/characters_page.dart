import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_wrapper.dart';
import 'package:marvel_knowledge_compendium/features/characters/presentation/blocs/bloc.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_list_item.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_sliver_search_app_bar_and_list_page.dart';
import 'package:marvel_knowledge_compendium/res/strings.dart' as strings;

class CharactersPage extends StatefulWidget {
  final CharacterDataWrapper unfilteredCharacterDataWrapper;

  const CharactersPage({required this.unfilteredCharacterDataWrapper, Key? key}) : super(key: key);

  @override
  State<CharactersPage> createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  @override
  Widget build(BuildContext context) {
    final CharactersPageBloc _bloc = getIt<CharactersPageBloc>();

    return BlocBuilder<CharactersPageBloc, CharactersPageState>(
      bloc: _bloc,
      builder: (_, CharactersPageState state) {
        return MKCSliverSearchAppBarAndListPage<CharactersPageBloc, CharactersPageState, Character>(
          cubit: _bloc,
          onPageInit: () =>
              _bloc.add(CharactersPageSaveInitialUnfilteredDataEvent(widget.unfilteredCharacterDataWrapper.data!)),
          onLoadMoreResults: () =>
              _bloc.add(CharactersPageLoadMoreCharactersEvent(state.characterDataContainer!.results!.length)),
          onSearch: (String name) => _bloc.add(CharactersPageSearchCharacterByNameEvent(name)),
          isInitialState: state.isInitialState,
          isWrapperLoaded: state.isCharactersWrapperLoaded,
          isLoadingNewResults: state.isLoadingNewCharacters,
          wereResultsSearched: state.wereCharactersSearched,
          searchAppBarText: strings.charactersPageSearchAppBarText,
          pageOverscrollNoMoreResultsText: strings.charactersPageOverscrollNoMoreCharactersText,
          emptySearchResultsText: strings.charactersPageEmptyListText,
          areMoreResultsAvailable: state.areMoreCharactersAvailable,
          dataContainer: state.characterDataContainer,
          // Passing dynamic as error occurs when passing a correct type (Character)
          listItem: (dynamic character) => MKCListItem(character: character),
        );
      },
    );
  }
}

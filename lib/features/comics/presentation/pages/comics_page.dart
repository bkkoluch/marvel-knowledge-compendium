import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic_data_wrapper.dart';
import 'package:marvel_knowledge_compendium/features/comics/presentation/cubits/cubit.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_list_item.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_sliver_search_app_bar_and_list_page.dart';
import 'package:marvel_knowledge_compendium/res/strings.dart' as strings;

class ComicsPage extends StatefulWidget {
  final ComicDataWrapper unfilteredComicDataWrapper;

  const ComicsPage({required this.unfilteredComicDataWrapper, Key? key}) : super(key: key);

  @override
  State<ComicsPage> createState() => _ComicsPageState();
}

class _ComicsPageState extends State<ComicsPage> {
  final ComicsPageCubit _cubit = getIt<ComicsPageCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ComicsPageCubit, ComicsPageState>(
      bloc: _cubit,
      builder: (_, ComicsPageState state) {
        return MKCSliverSearchAppBarAndListPage<ComicsPageCubit, ComicsPageState, Comic>(
          cubit: _cubit,
          onPageInit: () => _cubit.onPageInit(widget.unfilteredComicDataWrapper.data!),
          onLoadMoreResults: _cubit.onLoadMoreResults,
          onSearch: _cubit.onSearch,
          isInitialState: state.isInitialState,
          isWrapperLoaded: state.isComicsWrapperLoaded,
          isLoadingNewResults: state.isLoadingNewComics,
          wereResultsSearched: state.wereComicsSearched,
          searchAppBarText: strings.comicsPageSearchAppBarText,
          pageOverscrollNoMoreResultsText: strings.comicsPageOverscrollNoMoreCharactersText,
          emptySearchResultsText: strings.comicsPageEmptyListText,
          areMoreResultsAvailable: state.areMoreComicsAvailable,
          dataContainer: state.comicsDataContainer,
          // Passing dynamic as error occurs when passing a correct type (Character)
          listItem: (dynamic comic) => MKCListItem(comic: comic),
        );
      },
    );
  }
}

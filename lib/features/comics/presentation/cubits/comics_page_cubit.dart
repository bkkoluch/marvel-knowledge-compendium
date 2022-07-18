import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic_data_container.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic_data_wrapper.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/use_cases/get_all_comics_use_case.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/use_cases/get_saved_comics_use_case.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/use_cases/save_all_comics_use_case.dart';
import 'package:marvel_knowledge_compendium/features/comics/presentation/cubits/comics_page_state.dart';

class ComicsPageCubit extends Cubit<ComicsPageState> {
  ComicsPageCubit() : super(ComicsPageState.initial());

  void onPageInit(ComicDataContainer comicDataContainer) async {
    final ComicDataContainer? savedComicDataContainer = (await getIt.getAsync<GetSavedComicsUseCase>())();

    if (savedComicDataContainer == null) {
      await ((await getIt.getAsync<SaveAllComicsUseCase>())(comicDataContainer));
    }

    emit(
      state.copyWith(
        comicsDataContainer: savedComicDataContainer != null ? savedComicDataContainer : comicDataContainer,
        status: ComicsPageStateStatus.comicsWrapperLoaded,
      ),
    );
  }

  void onLoadMoreResults() async {
    emit(state.copyWith(status: ComicsPageStateStatus.loadingNewComics));

    final result = await (await getIt.getAsync<GetAllComicsUseCase>())(state.comicsDataContainer?.results?.length);

    return result.fold(
      (_) => emit(state.copyWith(status: ComicsPageStateStatus.error)),
      (ComicDataWrapper comicDataWrapper) async {
        final List<Comic> newComicsListToEmit = [
          ...?state.comicsDataContainer?.results,
          ...?comicDataWrapper.data?.results,
        ];

        final ComicDataContainer comicDataContainerToEmit =
            state.comicsDataContainer!.copyWith(results: newComicsListToEmit.toSet().toList());

        emit(
          state.copyWith(
            status: ComicsPageStateStatus.comicsWrapperLoaded,
            comicsDataContainer: comicDataContainerToEmit,
          ),
        );

        // Save new ComicDataContainer when new characters are loaded
        unawaited((await getIt.getAsync<SaveAllComicsUseCase>())(comicDataContainerToEmit));
      },
    );
  }

  void onSearch(String comicName) async {
    final ComicDataContainer? savedComicDataContainer = (await getIt.getAsync<GetSavedComicsUseCase>())();
    if (savedComicDataContainer != null) {
      if ((comicName.isEmpty || comicName == '' || comicName.length == 0)) {
        emit(
          state.copyWith(
            status: ComicsPageStateStatus.comicsWrapperLoaded,
            comicsDataContainer: savedComicDataContainer,
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: ComicsPageStateStatus.searchSubmitted,
            comicsDataContainer: state.comicsDataContainer?.copyWith(
              results: savedComicDataContainer.results!
                  .where((Comic comic) => comic.name!.toLowerCase().contains(comicName.toLowerCase()))
                  .toList(),
            ),
          ),
        );
      }
    }
  }
}

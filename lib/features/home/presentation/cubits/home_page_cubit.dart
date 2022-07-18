import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:marvel_knowledge_compendium/core/error/failures.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.dart';
import 'package:marvel_knowledge_compendium/core/shared_entities/data_container.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_container.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_wrapper.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_all_characters_use_case.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_saved_characters_use_case.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic_data_container.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic_data_wrapper.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/use_cases/get_all_comics_use_case.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/use_cases/get_saved_comics_use_case.dart';
import 'package:marvel_knowledge_compendium/features/home/presentation/cubits/home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageState.initial());

  Future<void> loadHomePageImages() async {
    emit(state.copyWith(status: HomePageStateStatus.loading));

    final CharacterDataContainer? savedCharacterDataContainer = (await getIt.getAsync<GetSavedCharactersUseCase>())();
    final ComicDataContainer? savedComicDataContainer = (await getIt.getAsync<GetSavedComicsUseCase>())();

    if (savedCharacterDataContainer != null && savedComicDataContainer != null) {
      final List<Character>? characterListWithCorrectImages =
          _filterListWithIncorrectImages(savedCharacterDataContainer) as List<Character>?;

      final List<Comic>? comicListWithCorrectImages =
          (_filterListWithIncorrectImages(savedComicDataContainer) as List<Comic>?);

      _emitLoadedState(
        characterDataWrapper: CharacterDataWrapper(data: savedCharacterDataContainer),
        comicDataWrapper: ComicDataWrapper(data: savedComicDataContainer),
        homePageImages: _getHomePageImages(characterListWithCorrectImages, comicListWithCorrectImages),
      );
      return;
    }

    final List<Either> result = await Future.wait([
      getIt<GetAllCharactersUseCase>()(),
      (await getIt.getAsync<GetAllComicsUseCase>())(),
    ]);

    (result[0] as Either<Failure, CharacterDataWrapper>).fold(
      _emitErrorState,
      (CharacterDataWrapper characterDataWrapper) {
        (result[1] as Either<Failure, ComicDataWrapper>).fold(
          _emitErrorState,
          (ComicDataWrapper comicDataWrapper) {
            final List<Character>? characterListWithCorrectImages =
                _filterListWithIncorrectImages(characterDataWrapper.data!) as List<Character>?;

            // Removing first entry as even though correct filtering is done,
            // the image does not appear.
            final List<Comic>? comicListWithCorrectImages =
                (_filterListWithIncorrectImages(comicDataWrapper.data!) as List<Comic>?)?..removeAt(0);

            _emitLoadedState(
              characterDataWrapper: characterDataWrapper,
              comicDataWrapper: comicDataWrapper,
              homePageImages: _getHomePageImages(characterListWithCorrectImages, comicListWithCorrectImages),
            );
          },
        );
      },
    );
  }

  void _emitLoadedState({
    required CharacterDataWrapper characterDataWrapper,
    required ComicDataWrapper comicDataWrapper,
    required List<String> homePageImages,
  }) {
    emit(
      state.copyWith(
        status: HomePageStateStatus.loaded,
        unfilteredCharacterDataWrapper: characterDataWrapper,
        unfilteredComicDataWrapper: comicDataWrapper,
        homePageImages: homePageImages,
      ),
    );
  }

  void _emitErrorState(Failure failure) => emit(state.copyWith(status: HomePageStateStatus.error));

  List<String> _getHomePageImages(List<Character>? characters, List<Comic>? comics) => [
        characters?.first.thumbnail?.properImagePath ?? '',
        comics?.first.thumbnail?.properImagePath ?? '',
      ];

  List<dynamic>? _filterListWithIncorrectImages(DataContainer dataContainer) {
    return dataContainer.results
        ?.where(
          (character) =>
              character.thumbnail?.properImagePath != null &&
              !character.thumbnail!.properImagePath!.contains('image_not_available'),
        )
        .toList();
  }
}

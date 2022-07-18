import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:marvel_knowledge_compendium/core/error/failures.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.dart';
import 'package:marvel_knowledge_compendium/core/shared_entities/data_container.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_wrapper.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_all_characters_use_case.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic_data_wrapper.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/use_cases/get_all_comics_use_case.dart';
import 'package:marvel_knowledge_compendium/features/home/presentation/cubits/home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageState.initial());

  Future<void> loadHomePageImages() async {
    emit(state.copyWith(status: HomePageStateStatus.loading));

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

            emit(
              state.copyWith(
                status: HomePageStateStatus.loaded,
                unfilteredCharacterDataWrapper: characterDataWrapper,
                unfilteredComicDataWrapper: comicDataWrapper,
                homePageImages: [
                  characterListWithCorrectImages?.first.thumbnail?.properImagePath ?? '',
                  comicListWithCorrectImages?.first.thumbnail?.properImagePath ?? '',
                ],
              ),
            );
          },
        );
      },
    );
  }

  void _emitErrorState(Failure failure) => emit(state.copyWith(status: HomePageStateStatus.error));

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

import 'package:bloc/bloc.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_wrapper.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_all_characters_use_case.dart';
import 'package:marvel_knowledge_compendium/features/home/presentation/cubits/home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageState.initial());

  Future<void> loadHomePageImages() async {
    emit(state.copyWith(status: HomePageStateStatus.loading));
    final result = await getIt<GetAllCharactersUseCase>()();

    result.fold(
      (_) {
        // TODO: handle error
        emit(state.copyWith(status: HomePageStateStatus.error));
      },
      (CharacterDataWrapper characters) {
        final List<Character>? characterListWithCorrectImages = characters.data?.results
            ?.where(
              (character) =>
                  character.thumbnail?.properImagePath != null &&
                  !character.thumbnail!.properImagePath!.contains('image_not_available'),
            )
            .toList();

        emit(
          state.copyWith(
            status: HomePageStateStatus.loaded,
            unfilteredCharacterDataWrapper: characters,
            homePageImages: [
              ...?characterListWithCorrectImages?.map((characterData) => characterData.thumbnail?.properImagePath ?? '')
            ],
          ),
        );
      },
    );
  }
}

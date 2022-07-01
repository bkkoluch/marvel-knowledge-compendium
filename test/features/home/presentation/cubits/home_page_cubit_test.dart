import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_wrapper.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_all_characters_use_case.dart';
import 'package:marvel_knowledge_compendium/features/home/presentation/cubits/cubit.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final HomePageState initialState = HomePageState.initial();
  final GetAllCharactersUseCase getAllCharactersUseCase = MockGetAllCharactersUseCase();

  setUpAll(() => getIt.registerFactory<GetAllCharactersUseCase>(() => getAllCharactersUseCase));

  List<Character>? filterOutImproperCharacters(CharacterDataWrapper characterDataWrapper) =>
      characterDataWrapper.data?.results
          ?.where(
            (character) =>
                character.thumbnail?.properImagePath != null &&
                !character.thumbnail!.properImagePath!.contains('image_not_available'),
          )
          .toList();

  test(
    'HomePageCubit::initialState',
    () async {
      // Assert
      expect(HomePageCubit().state, initialState);
    },
  );

  group('HomePageCubit::loadHomePageImages', () {
    blocTest<HomePageCubit, HomePageState>(
      'should emit correct states when GetAllCharactersUseCase is successful',
      setUp: () => when(() => getAllCharactersUseCase()).thenAnswer((_) async => Right(tCharacterDataWrapper)),
      build: () => HomePageCubit(),
      act: (bloc) => bloc.loadHomePageImages(),
      expect: () => <HomePageState>[
        initialState.copyWith(status: HomePageStateStatus.loading),
        initialState.copyWith(
          status: HomePageStateStatus.loaded,
          unfilteredCharacterDataWrapper: tCharacterDataWrapper,
          homePageImages: [
            ...?filterOutImproperCharacters(tCharacterDataWrapper)
                ?.map((characterData) => characterData.thumbnail?.properImagePath ?? '')
          ],
        ),
      ],
    );

    blocTest<HomePageCubit, HomePageState>(
      'should emit correct states when GetAllCharactersUseCase returns ServerFailure',
      setUp: () => when(() => getAllCharactersUseCase()).thenAnswer((_) async => Left(tServerFailure)),
      build: () => HomePageCubit(),
      act: (bloc) => bloc.loadHomePageImages(),
      expect: () => <HomePageState>[
        initialState.copyWith(status: HomePageStateStatus.loading),
        initialState.copyWith(status: HomePageStateStatus.error)
      ],
    );
  });
}

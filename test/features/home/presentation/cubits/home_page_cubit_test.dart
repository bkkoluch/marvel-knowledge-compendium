import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_wrapper.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_all_characters_use_case.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_saved_characters_use_case.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic_data_wrapper.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/use_cases/get_all_comics_use_case.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/use_cases/get_saved_comics_use_case.dart';
import 'package:marvel_knowledge_compendium/features/home/presentation/cubits/cubit.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final HomePageState initialState = HomePageState.initial();
  final GetAllCharactersUseCase getAllCharactersUseCase = MockGetAllCharactersUseCase();
  final GetAllComicsUseCase getAllComicsUseCase = MockGetAllComicsUseCase();
  final GetSavedComicsUseCase getSavedComicsUseCase = MockGetSavedComicsUseCase();
  final GetSavedCharactersUseCase getSavedCharactersUseCase = MockGetSavedCharactersUseCase();

  setUpAll(() {
    getIt.registerFactory<GetAllCharactersUseCase>(() => getAllCharactersUseCase);
    getIt.registerFactoryAsync<GetAllComicsUseCase>(() async => getAllComicsUseCase);
    getIt.registerFactoryAsync<GetSavedComicsUseCase>(() async => getSavedComicsUseCase);
    getIt.registerFactoryAsync<GetSavedCharactersUseCase>(() async => getSavedCharactersUseCase);

    when(() => getSavedCharactersUseCase()).thenAnswer((_) => tCharacterDataContainer);
  });

  test(
    'HomePageCubit::initialState',
    () async {
      // Assert
      expect(HomePageCubit().state, initialState);
    },
  );

  group('HomePageCubit::loadHomePageImages', () {
    blocTest<HomePageCubit, HomePageState>(
      'should emit correct states when all saved containers are not null',
      setUp: () {
        when(() => getSavedComicsUseCase()).thenAnswer((_) => tComicDataContainer);
      },
      build: () => HomePageCubit(),
      act: (bloc) => bloc.loadHomePageImages(),
      expect: () => <HomePageState>[
        initialState.copyWith(status: HomePageStateStatus.loading),
        initialState.copyWith(
          status: HomePageStateStatus.loaded,
          unfilteredCharacterDataWrapper: CharacterDataWrapper(data: tCharacterDataContainer),
          unfilteredComicDataWrapper: ComicDataWrapper(data: tComicDataContainer),
          homePageImages: [
            tCharacterDataWrapper.data?.results?.first.thumbnail?.properImagePath ?? '',
            tComicDataWrapper.data?.results?.first.thumbnail?.properImagePath ?? '',
          ],
        ),
      ],
      verify: (_) {
        verify(() => getSavedCharactersUseCase()).called(1);
        verify(() => getSavedComicsUseCase()).called(1);
        verifyZeroInteractions(getAllCharactersUseCase);
        verifyZeroInteractions(getAllComicsUseCase);
      },
    );

    blocTest<HomePageCubit, HomePageState>(
      'should emit correct states when GetAllCharactersUseCase and GetAllComicsUseCase are successful, but any of the saved containers is null',
      setUp: () {
        when(() => getAllCharactersUseCase()).thenAnswer((_) async => Right(tCharacterDataWrapper));
        when(() => getAllComicsUseCase()).thenAnswer((_) async => Right(tComicDataWrapper));
        when(() => getSavedComicsUseCase()).thenAnswer((_) => null);
      },
      build: () => HomePageCubit(),
      act: (bloc) => bloc.loadHomePageImages(),
      expect: () => <HomePageState>[
        initialState.copyWith(status: HomePageStateStatus.loading),
        initialState.copyWith(
          status: HomePageStateStatus.loaded,
          unfilteredCharacterDataWrapper: tCharacterDataWrapper,
          unfilteredComicDataWrapper: tComicDataWrapper,
          homePageImages: [
            tCharacterDataWrapper.data?.results?.first.thumbnail?.properImagePath ?? '',
            tComicDataWrapper.data?.results?.first.thumbnail?.properImagePath ?? '',
          ],
        ),
      ],
      verify: (_) {
        verify(() => getAllCharactersUseCase()).called(1);
        verify(() => getAllComicsUseCase()).called(1);
        verify(() => getSavedComicsUseCase()).called(1);
        verify(() => getSavedCharactersUseCase()).called(1);
      },
    );

    blocTest<HomePageCubit, HomePageState>(
      'should emit correct states when GetAllCharactersUseCase returns ServerFailure',
      setUp: () {
        when(() => getAllCharactersUseCase()).thenAnswer((_) async => Left(tServerFailure));
        when(() => getSavedComicsUseCase()).thenAnswer((_) => null);
      },
      build: () => HomePageCubit(),
      act: (bloc) => bloc.loadHomePageImages(),
      expect: () => <HomePageState>[
        initialState.copyWith(status: HomePageStateStatus.loading),
        initialState.copyWith(status: HomePageStateStatus.error)
      ],
    );

    blocTest<HomePageCubit, HomePageState>(
      'should emit correct states when GetAllComicsUseCase returns ServerFailure',
      setUp: () {
        when(() => getAllCharactersUseCase()).thenAnswer((_) async => Right(tCharacterDataWrapper));
        when(() => getAllComicsUseCase()).thenAnswer((_) async => Left(tServerFailure));
      },
      build: () => HomePageCubit(),
      act: (bloc) => bloc.loadHomePageImages(),
      expect: () => <HomePageState>[
        initialState.copyWith(status: HomePageStateStatus.loading),
        initialState.copyWith(status: HomePageStateStatus.error)
      ],
    );
  });
}

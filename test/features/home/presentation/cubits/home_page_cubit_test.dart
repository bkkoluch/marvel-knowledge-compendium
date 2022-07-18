import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_all_characters_use_case.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/use_cases/get_all_comics_use_case.dart';
import 'package:marvel_knowledge_compendium/features/home/presentation/cubits/cubit.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final HomePageState initialState = HomePageState.initial();
  final GetAllCharactersUseCase getAllCharactersUseCase = MockGetAllCharactersUseCase();
  final GetAllComicsUseCase getAllComicsUseCase = MockGetAllComicsUseCase();

  setUpAll(() => getIt.registerFactory<GetAllCharactersUseCase>(() => getAllCharactersUseCase));
  setUpAll(() => getIt.registerFactoryAsync<GetAllComicsUseCase>(() async => getAllComicsUseCase));

  test(
    'HomePageCubit::initialState',
    () async {
      // Assert
      expect(HomePageCubit().state, initialState);
    },
  );

  group('HomePageCubit::loadHomePageImages', () {
    blocTest<HomePageCubit, HomePageState>(
      'should emit correct states when GetAllCharactersUseCase and GetAllComicsUseCase are successful',
      setUp: () {
        when(() => getAllCharactersUseCase()).thenAnswer((_) async => Right(tCharacterDataWrapper));
        when(() => getAllComicsUseCase()).thenAnswer((_) async => Right(tComicDataWrapper));
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

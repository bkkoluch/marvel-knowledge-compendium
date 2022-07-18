import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic_data_container.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/use_cases/get_all_comics_use_case.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/use_cases/get_saved_comics_use_case.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/use_cases/save_all_comics_use_case.dart';
import 'package:marvel_knowledge_compendium/features/comics/presentation/cubits/cubit.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';
import '../../../../test_setup.dart';

void main() {
  final ComicsPageState initialState = ComicsPageState.initial();
  final GetAllComicsUseCase getAllComicsUseCase = MockGetAllComicsUseCase();
  final GetSavedComicsUseCase getSavedComicsUseCase = MockGetSavedComicsUseCase();
  final SaveAllComicsUseCase saveAllComicsUseCase = MockSaveAllComicsUseCase();

  setUpAll(() {
    baseSetup();

    getIt.registerFactoryAsync<GetAllComicsUseCase>(() async => getAllComicsUseCase);
    getIt.registerFactoryAsync<GetSavedComicsUseCase>(() async => getSavedComicsUseCase);
    getIt.registerFactoryAsync<SaveAllComicsUseCase>(() async => saveAllComicsUseCase);

    when(() => saveAllComicsUseCase(captureAny())).thenAnswer((_) async => null);
  });

  test(
    'ComicsPageState::initialState',
    () async {
      // Assert
      expect(ComicsPageCubit().state, initialState);
    },
  );

  group('ComicsPageCubit::onPageInit', () {
    blocTest<ComicsPageCubit, ComicsPageState>(
      'should emit correct states onPageInit when GetSavedComicsUseCase result is not null',
      setUp: () {
        when(() => getSavedComicsUseCase()).thenAnswer((_) => tComicDataContainer);
      },
      build: () => ComicsPageCubit(),
      act: (cubit) => cubit.onPageInit(tComicDataContainerFromJSON),
      expect: () => <ComicsPageState>[
        initialState.copyWith(
          comicsDataContainer: tComicDataContainer,
          status: ComicsPageStateStatus.comicsWrapperLoaded,
        )
      ],
      verify: (_) {
        verify(() => getSavedComicsUseCase()).called(1);
        verifyZeroInteractions(saveAllComicsUseCase);
      },
    );

    blocTest<ComicsPageCubit, ComicsPageState>(
      'should emit correct states onPageInit when GetSavedComicsUseCase result is null',
      setUp: () {
        when(() => getSavedComicsUseCase()).thenAnswer((_) => null);
      },
      build: () => ComicsPageCubit(),
      act: (cubit) => cubit.onPageInit(tComicDataContainerFromJSON),
      expect: () => <ComicsPageState>[
        initialState.copyWith(
          comicsDataContainer: tComicDataContainerFromJSON,
          status: ComicsPageStateStatus.comicsWrapperLoaded,
        )
      ],
      verify: (_) {
        verify(() => getSavedComicsUseCase()).called(1);
        verify(() => saveAllComicsUseCase(tComicDataContainerFromJSON)).called(1);
      },
    );
  });

  group(
    'ComicsPageCubit::onLoadMoreResults',
    () {
      final ComicDataContainer lastComicDataContainerToEmit = tComicDataContainer.copyWith(
        results: [...?tComicDataContainer.results, ...?tComicDataDifferentWrapper.data?.results].toSet().toList(),
      );

      blocTest<ComicsPageCubit, ComicsPageState>(
        'should emit correct states onLoadMoreResults when GetAllComicsUseCase returns ComicDataWrapper',
        setUp: () {
          when(() => getSavedComicsUseCase()).thenAnswer((_) => tComicDataContainer);
          when(() => getAllComicsUseCase(captureAny())).thenAnswer((_) async => Right(tComicDataDifferentWrapper));
        },
        build: () => ComicsPageCubit(),
        act: (cubit) async {
          cubit.onPageInit(tComicDataContainer);
          await Future.delayed(const Duration(seconds: 1));
          cubit.onLoadMoreResults();
        },
        expect: () => <ComicsPageState>[
          initialState.copyWith(
            comicsDataContainer: tComicDataContainer,
            status: ComicsPageStateStatus.comicsWrapperLoaded,
          ),
          initialState.copyWith(
            comicsDataContainer: tComicDataContainer,
            status: ComicsPageStateStatus.loadingNewComics,
          ),
          initialState.copyWith(
            status: ComicsPageStateStatus.comicsWrapperLoaded,
            comicsDataContainer: lastComicDataContainerToEmit,
          ),
        ],
        verify: (_) {
          verify(() => getAllComicsUseCase(tComicDataContainer.results?.length)).called(1);
          verify(() => saveAllComicsUseCase(lastComicDataContainerToEmit)).called(1);
        },
      );

      blocTest<ComicsPageCubit, ComicsPageState>(
        'should emit correct states onLoadMoreResults when GetAllComicsUseCase returns a Failure',
        setUp: () {
          when(() => getSavedComicsUseCase()).thenAnswer((_) => tComicDataContainer);
          when(() => getAllComicsUseCase(captureAny())).thenAnswer((_) async => Left(tServerFailure));
        },
        build: () => ComicsPageCubit(),
        act: (cubit) async {
          cubit.onPageInit(tComicDataContainer);
          await Future.delayed(const Duration(seconds: 1));
          cubit.onLoadMoreResults();
        },
        expect: () => <ComicsPageState>[
          initialState.copyWith(
            comicsDataContainer: tComicDataContainer,
            status: ComicsPageStateStatus.error,
          )
        ],
        verify: (_) {
          verify(() => getSavedComicsUseCase()).called(2);
          verify(() => getAllComicsUseCase(tComicDataContainer.results?.length)).called(1);
        },
        skip: 2,
      );
    },
  );
}

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_all_characters_use_case.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_saved_characters_use_case.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/save_characters_use_case.dart';
import 'package:marvel_knowledge_compendium/features/characters/presentation/blocs/bloc.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';
import '../../../../test_setup.dart';

void main() {
  final CharactersPageState initialState = CharactersPageState.initial();
  final GetAllCharactersUseCase getAllCharactersUseCase = MockGetAllCharactersUseCase();
  final GetSavedCharactersUseCase getSavedCharactersUseCase = MockGetSavedCharactersUseCase();
  final SaveCharactersUseCase saveCharactersUseCase = MockSaveCharactersUseCase();

  setUpAll(() {
    baseSetup();

    getIt.registerFactory<GetAllCharactersUseCase>(() => getAllCharactersUseCase);
    getIt.registerFactoryAsync<GetSavedCharactersUseCase>(() async => getSavedCharactersUseCase);
    getIt.registerFactoryAsync<SaveCharactersUseCase>(() async => saveCharactersUseCase);
  });

  test(
    'CharactersPageState::initialState',
    () async {
      // Assert
      expect(CharactersPageBloc().state, initialState);
    },
  );

  group('CharactersPageBloc::_onCharactersPageSaveInitialUnfilteredDataEvent', () {
    blocTest<CharactersPageBloc, CharactersPageState>(
      'should emit correct states on CharactersPageSaveInitialUnfilteredDataEvent when GetSavedCharactersUseCase result is not null',
      setUp: () {
        when(() => getSavedCharactersUseCase()).thenAnswer((_) => tCharacterDataContainerFromJSON);
      },
      build: () => CharactersPageBloc(),
      act: (bloc) => bloc.add(CharactersPageSaveInitialUnfilteredDataEvent(tCharacterDataWrapper.data!)),
      expect: () => <CharactersPageState>[
        initialState.copyWith(
          characterDataContainer: tCharacterDataContainerFromJSON,
          status: CharactersPageStateStatus.charactersWrapperLoaded,
        )
      ],
      verify: (_) {
        verify(() => getSavedCharactersUseCase()).called(1);
        verifyZeroInteractions(saveCharactersUseCase);
      },
    );

    blocTest<CharactersPageBloc, CharactersPageState>(
      'should emit correct states on CharactersPageSaveInitialUnfilteredDataEvent when GetSavedCharactersUseCase result is null',
      setUp: () {
        when(() => getSavedCharactersUseCase()).thenAnswer((_) => null);
        when(() => saveCharactersUseCase(captureAny())).thenAnswer((_) async => null);
      },
      build: () => CharactersPageBloc(),
      act: (bloc) => bloc.add(CharactersPageSaveInitialUnfilteredDataEvent(tCharacterDataWrapper.data!)),
      expect: () => <CharactersPageState>[
        initialState.copyWith(
          characterDataContainer: tCharacterDataWrapper.data,
          status: CharactersPageStateStatus.charactersWrapperLoaded,
        )
      ],
      verify: (_) {
        verify(() => getSavedCharactersUseCase()).called(1);
        verify(() => saveCharactersUseCase(tCharacterDataWrapper.data!)).called(1);
      },
    );
  });

  group('CharactersPageBloc::_onCharactersPageLoadMoreCharactersEvent', () {
    blocTest<CharactersPageBloc, CharactersPageState>(
      'should emit correct states on CharactersPageLoadMoreCharactersEvent when GetAllCharactersUseCase is successful',
      setUp: () {
        when(() => getSavedCharactersUseCase()).thenAnswer((_) => null);
        when(() => saveCharactersUseCase(captureAny())).thenAnswer((_) async => null);
        when(() => getAllCharactersUseCase(captureAny())).thenAnswer((_) async => Right(tCharacterDataWrapper));
      },
      build: () => CharactersPageBloc(),
      act: (bloc) async {
        bloc.add(CharactersPageSaveInitialUnfilteredDataEvent(tCharacterDataContainer));
        await Future.delayed(const Duration(seconds: 1));
        return bloc..add(CharactersPageLoadMoreCharactersEvent(tOffset));
      },
      expect: () => <CharactersPageState>[
        initialState.copyWith(
          characterDataContainer: tCharacterDataContainer,
          status: CharactersPageStateStatus.charactersWrapperLoaded,
        ),
        initialState.copyWith(
          characterDataContainer: tCharacterDataContainer,
          status: CharactersPageStateStatus.loadingNewCharacters,
        ),
        initialState.copyWith(
          characterDataContainer: tCharacterDataContainer.copyWith(
            results: [
              ...?tCharacterDataContainer.results,
              ...?tCharacterDataContainer.results,
            ].toSet().toList(),
          ),
          status: CharactersPageStateStatus.charactersWrapperLoaded,
        ),
      ],
      verify: (bloc) {
        () => bloc.state.characterDataContainer?.results?.length == 2;
        verify(() => getSavedCharactersUseCase()).called(1);
        verify(() => saveCharactersUseCase(tCharacterDataWrapper.data!)).called(2);
        verify(() => getAllCharactersUseCase(tOffset)).called(1);
      },
    );

    blocTest<CharactersPageBloc, CharactersPageState>(
      'should emit correct states on CharactersPageLoadMoreCharactersEvent when GetAllCharactersUseCase is not successful',
      setUp: () {
        when(() => getSavedCharactersUseCase()).thenAnswer((_) => null);
        when(() => getAllCharactersUseCase(captureAny())).thenAnswer((_) async => Left(tServerFailure));
        when(() => saveCharactersUseCase(captureAny())).thenAnswer((_) async => null);
      },
      build: () => CharactersPageBloc(),
      act: (bloc) async {
        bloc.add(CharactersPageSaveInitialUnfilteredDataEvent(tCharacterDataContainer));
        await Future.delayed(const Duration(seconds: 1));
        return bloc..add(CharactersPageLoadMoreCharactersEvent(tOffset));
      },
      expect: () => <CharactersPageState>[
        initialState.copyWith(
          characterDataContainer: tCharacterDataContainer,
          status: CharactersPageStateStatus.charactersWrapperLoaded,
        ),
        initialState.copyWith(
          characterDataContainer: tCharacterDataContainer,
          status: CharactersPageStateStatus.loadingNewCharacters,
        ),
        initialState.copyWith(
          characterDataContainer: tCharacterDataContainer,
          status: CharactersPageStateStatus.error,
        ),
      ],
      verify: (bloc) {
        () => bloc.state.characterDataContainer?.results?.length == 1;
        verify(() => getSavedCharactersUseCase()).called(1);
        verify(() => saveCharactersUseCase(tCharacterDataWrapper.data!)).called(1);
        verify(() => getAllCharactersUseCase(tOffset)).called(1);
      },
    );
  });

  group('CharactersPageBloc::_onCharactersPageSearchCharacterByNameEvent', () {
    blocTest<CharactersPageBloc, CharactersPageState>(
      'should emit correct states on CharactersPageSearchCharacterByNameEvent when GetSavedCharactersUseCase result is null',
      setUp: () {
        when(() => getSavedCharactersUseCase()).thenAnswer((_) => null);
      },
      build: () => CharactersPageBloc(),
      act: (bloc) => bloc.add(CharactersPageSearchCharacterByNameEvent('')),
      expect: () => <CharactersPageState>[],
      verify: (_) => verify(() => getSavedCharactersUseCase()).called(1),
    );

    blocTest<CharactersPageBloc, CharactersPageState>(
      'should emit correct on CharactersPageSearchCharacterByNameEvent when GetSavedCharactersUseCase result is not null and event.name is an empty string',
      setUp: () {
        when(() => getSavedCharactersUseCase()).thenAnswer((_) => tCharacterDataContainerFromJSON);
      },
      build: () => CharactersPageBloc(),
      act: (bloc) => bloc.add(CharactersPageSearchCharacterByNameEvent('')),
      expect: () => <CharactersPageState>[
        initialState.copyWith(
          characterDataContainer: tCharacterDataContainerFromJSON,
          status: CharactersPageStateStatus.charactersWrapperLoaded,
        )
      ],
      verify: (_) => verify(() => getSavedCharactersUseCase()).called(1),
    );

    blocTest<CharactersPageBloc, CharactersPageState>(
      'should emit correct states on CharactersPageSearchCharacterByNameEvent when GetSavedCharactersUseCase result is not null and event.name is not an empty string',
      setUp: () {
        when(() => getSavedCharactersUseCase()).thenAnswer((_) => tCharacterDataContainerFromJSON);
      },
      build: () => CharactersPageBloc(),
      act: (bloc) async {
        bloc.add(CharactersPageSaveInitialUnfilteredDataEvent(tCharacterDataContainerFromJSON));
        await Future.delayed(const Duration(seconds: 1));
        bloc.add(CharactersPageSearchCharacterByNameEvent(tCharacterName));
      },
      expect: () => <CharactersPageState>[
        initialState.copyWith(
          characterDataContainer: tCharacterDataContainerFromJSON,
          status: CharactersPageStateStatus.charactersWrapperLoaded,
        ),
        initialState.copyWith(
          characterDataContainer: tCharacterDataContainerFromJSON.copyWith(
            results: tCharacterDataContainerFromJSON.results!
                .where((Character character) => character.name!.toLowerCase().contains(tCharacterName.toLowerCase()))
                .toList(),
          ),
          status: CharactersPageStateStatus.searchSubmitted,
        )
      ],
      verify: (_) => verify(() => getSavedCharactersUseCase()).called(2),
    );
  });
}

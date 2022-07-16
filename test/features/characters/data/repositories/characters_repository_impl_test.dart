import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_local_data_source.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_remote_data_source.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/repositories/characters_repository_impl.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/repositories/characters_repository.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';
import '../../../../test_setup.dart';

void main() {
  final CharactersRemoteDataSource charactersRemoteDataSource = MockCharactersRemoteDataSource();
  final CharactersLocalDataSource charactersLocalDataSource = MockCharactersLocalDataSource();
  final CharactersRepository charactersRepository =
      CharactersRepositoryImpl(charactersRemoteDataSource, charactersLocalDataSource);

  setUpAll(baseSetup);

  group('getCharactersList', () {
    test(
      'should properly propagate the call to remote data source and return CharacterDataWrapperDto correctly on successful call',
      () async {
        // Arrange
        when(() => charactersRemoteDataSource.getCharactersList()).thenAnswer((_) async => tCharacterDataWrapperDto);

        // Act
        final result = await charactersRepository.getCharactersList();

        // Assert
        expect(result, Right(tCharacterDataWrapperDto));
        verify(() => charactersRemoteDataSource.getCharactersList()).called(1);
        verifyZeroInteractions(charactersLocalDataSource);
      },
    );

    test(
      'should properly propagate the call to remote data source and return ServerFailure when a call fails with ServerException',
      () async {
        // Arrange
        when(() => charactersRemoteDataSource.getCharactersList()).thenThrow(tServerException);

        // Act
        final result = await charactersRepository.getCharactersList();

        // Assert
        result.fold((failure) => expect(failure, tServerFailure), (_) {});
        verify(() => charactersRemoteDataSource.getCharactersList()).called(1);
        verifyZeroInteractions(charactersLocalDataSource);
      },
    );
  });

  group('getCharactersById', () {
    test(
      'should properly propagate the call to remote data source and return CharacterDataWrapperDto correctly on successful call',
      () async {
        // Arrange
        when(() => charactersRemoteDataSource.getCharacterById(captureAny()))
            .thenAnswer((_) async => tCharacterDataWrapperDto);

        // Act
        final result = await charactersRepository.getCharacterById(tCharacterId);

        // Assert
        expect(result, Right(tCharacterDataWrapperDto));
        verify(() => charactersRemoteDataSource.getCharacterById(tCharacterId)).called(1);
        verifyZeroInteractions(charactersLocalDataSource);
      },
    );

    test(
      'should properly propagate the call to remote data source and return ServerFailure when a call fails with ServerException',
      () async {
        // Arrange
        when(() => charactersRemoteDataSource.getCharacterById(captureAny())).thenThrow(tServerException);

        // Act
        final result = await charactersRepository.getCharacterById(tCharacterId);

        // Assert
        result.fold((failure) => expect(failure, tServerFailure), (_) {});
        verify(() => charactersRemoteDataSource.getCharacterById(tCharacterId)).called(1);
        verifyZeroInteractions(charactersLocalDataSource);
      },
    );
  });

  group('getSavedCharacters', () {
    test(
      'should properly propagate the call to local data source and return null if data source returns null',
      () async {
        // Arrange
        when(() => charactersLocalDataSource.getSavedCharacters()).thenAnswer((_) => null);

        // Act
        final result = charactersRepository.getSavedCharacters();

        // Assert
        verify(() => charactersLocalDataSource.getSavedCharacters()).called(1);
        expect(result, null);
      },
    );

    test(
      'should properly propagate the call to local data source and return CharacterDataContainer if data source returns it',
      () async {
        // Arrange
        when(() => charactersLocalDataSource.getSavedCharacters()).thenAnswer((_) => tCharacterDataContainer);

        // Act
        final result = charactersRepository.getSavedCharacters();

        // Assert
        verify(() => charactersLocalDataSource.getSavedCharacters()).called(1);
        expect(result, tCharacterDataContainer);
      },
    );
  });

  group('saveCharacters', () {
    test(
      'should properly propagate the call to local data source',
      () async {
        // Arrange
        when(() => charactersLocalDataSource.saveCharacters(captureAny())).thenAnswer((_) async => null);

        // Act
        await charactersRepository.saveCharacters(tCharacterDataContainer);

        // Assert
        verify(() => charactersLocalDataSource.saveCharacters(tCharacterDataContainer)).called(1);
      },
    );
  });
}

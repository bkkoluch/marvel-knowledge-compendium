import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_remote_data_source.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/repositories/characters_repository_impl.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/repositories/characters_repository.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final CharactersRemoteDataSource charactersRemoteDataSource = MockCharacterRemoteDataSource();
  final CharactersRepository charactersRepository = CharactersRepositoryImpl(charactersRemoteDataSource);

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
      },
    );
  });
}

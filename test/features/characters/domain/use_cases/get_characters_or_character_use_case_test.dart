import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/repositories/characters_repository.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_characters_or_character_use_case.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final CharactersRepository charactersRepository = MockCharactersRepository();
  final GetCharactersOrCharacterUseCase getCharactersOrCharacterUseCase =
      GetCharactersOrCharacterUseCase(charactersRepository);

  group('getCharactersList', () {
    test(
      'should properly propagate the call to repository and return CharacterDataWrapperDto correctly on successful call when characterId and offset are not provided',
      () async {
        // Arrange
        when(() => charactersRepository.getCharactersList()).thenAnswer((_) async => Right(tCharacterDataWrapperDto));

        // Act
        final result = await getCharactersOrCharacterUseCase.call(GetCharactersOrCharacterUseCaseParams());

        // Assert
        verify(() => charactersRepository.getCharactersList()).called(1);
        expect(result, Right(tCharacterDataWrapper));
      },
    );

    test(
      'should properly propagate the call to repository and return ServerFailure correctly when repository returns ServerFailure when characterId and offset are not provided',
      () async {
        // Arrange
        when(() => charactersRepository.getCharactersList()).thenAnswer((_) async => Left(tServerFailure));

        // Act
        final result = await getCharactersOrCharacterUseCase.call(GetCharactersOrCharacterUseCaseParams());

        // Assert
        verify(() => charactersRepository.getCharactersList()).called(1);
        expect(result, Left(tServerFailure));
      },
    );

    test(
      'should properly propagate the call to repository and return CharacterDataWrapperDto correctly on successful call when characterId is not and offset is provided',
      () async {
        // Arrange
        when(() => charactersRepository.getCharactersList(offset: any(named: 'offset')))
            .thenAnswer((_) async => Right(tCharacterDataWrapperDto));

        // Act
        final result =
            await getCharactersOrCharacterUseCase.call(GetCharactersOrCharacterUseCaseParams(offset: tOffset));

        // Assert
        verify(() => charactersRepository.getCharactersList(offset: tOffset)).called(1);
        expect(result, Right(tCharacterDataWrapper));
      },
    );

    test(
      'should properly propagate the call to repository and return ServerFailure correctly when repository returns ServerFailure when characterId is not and offset is provided',
      () async {
        // Arrange
        when(() => charactersRepository.getCharactersList(offset: any(named: 'offset')))
            .thenAnswer((_) async => Left(tServerFailure));

        // Act
        final result =
            await getCharactersOrCharacterUseCase.call(GetCharactersOrCharacterUseCaseParams(offset: tOffset));

        // Assert
        verify(() => charactersRepository.getCharactersList(offset: tOffset)).called(1);
        expect(result, Left(tServerFailure));
      },
    );
  });

  group('getCharacterById', () {
    test(
      'should properly propagate the call to repository and return CharacterDataWrapperDto correctly on successful call when characterId is provided',
      () async {
        // Arrange
        when(() => charactersRepository.getCharacterById(captureAny()))
            .thenAnswer((_) async => Right(tCharacterDataWrapperDto));

        // Act
        final result = await getCharactersOrCharacterUseCase
            .call(GetCharactersOrCharacterUseCaseParams(characterId: tCharacterId));

        // Assert
        verify(() => charactersRepository.getCharacterById(tCharacterId)).called(1);
        expect(result, Right(tCharacterDataWrapper));
      },
    );

    test(
      'should properly propagate the call to repository and return ServerFailure correctly when repository returns ServerFailure when characterId is provided',
      () async {
        // Arrange
        when(() => charactersRepository.getCharacterById(captureAny())).thenAnswer((_) async => Left(tServerFailure));

        // Act
        final result = await getCharactersOrCharacterUseCase
            .call(GetCharactersOrCharacterUseCaseParams(characterId: tCharacterId));

        // Assert
        verify(() => charactersRepository.getCharacterById(tCharacterId)).called(1);
        expect(result, Left(tServerFailure));
      },
    );
  });
}

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_character_by_id_use_case.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_characters_or_character_use_case.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';
import '../../../../test_setup.dart';

void main() {
  final GetCharactersOrCharacterUseCase getCharactersOrCharacterUseCase = MockGetCharactersOrCharacterUseCase();
  final GetCharacterByIdUseCase getCharacterByIdUseCase = GetCharacterByIdUseCase();

  setUpAll(() {
    baseSetup();

    getIt.registerFactory<GetCharactersOrCharacterUseCase>(() => getCharactersOrCharacterUseCase);
  });

  test(
    'should properly propagate the call to repository and return CharacterDataWrapper correctly on successful call',
    () async {
      // Arrange
      when(() => getCharactersOrCharacterUseCase(captureAny())).thenAnswer((_) async => Right(tCharacterDataWrapper));

      // Act
      final result = await getCharacterByIdUseCase.call(tCharacterId);

      // Assert
      verify(() => getCharactersOrCharacterUseCase(captureAny())).called(1);
      expect(result, Right(tCharacterDataWrapper));
    },
  );

  test(
    'should properly propagate the call to repository and return ServerFailure correctly when repository returns ServerFailure',
    () async {
      // Arrange
      when(() => getCharactersOrCharacterUseCase(captureAny())).thenAnswer((_) async => Left(tServerFailure));

      // Act
      final result = await getCharacterByIdUseCase.call(tCharacterId);

      // Assert
      verify(() => getCharactersOrCharacterUseCase(captureAny())).called(1);
      expect(result, Left(tServerFailure));
    },
  );
}

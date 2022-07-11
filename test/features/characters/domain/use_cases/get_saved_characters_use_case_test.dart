import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/repositories/characters_repository.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_saved_characters_use_case.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final CharactersRepository charactersRepository = MockCharactersRepository();
  final GetSavedCharactersUseCase getSavedCharactersUseCase = GetSavedCharactersUseCase(charactersRepository);

  test(
    'should correctly propagate the call to repository and return null if repository returns null',
    () async {
      // Arrange
      when(() => charactersRepository.getSavedCharacters()).thenAnswer((_) => null);

      // Act
      final result = getSavedCharactersUseCase.call();

      // Assert
      verify(() => charactersRepository.getSavedCharacters()).called(1);
      expect(result, null);
    },
  );

  test(
    'should correctly propagate the call to repository and return CharacterDataContainer if repository returns CharacterDataContainer',
    () async {
      // Arrange
      when(() => charactersRepository.getSavedCharacters()).thenAnswer((_) => tCharacterDataContainer);

      // Act
      final result = getSavedCharactersUseCase.call();

      // Assert
      verify(() => charactersRepository.getSavedCharacters()).called(1);
      expect(result, tCharacterDataContainer);
    },
  );
}

import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/repositories/characters_repository.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/save_characters_use_case.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';
import '../../../../test_setup.dart';

void main() {
  final CharactersRepository charactersRepository = MockCharactersRepository();
  final SaveCharactersUseCase saveCharactersUseCase = SaveCharactersUseCase(charactersRepository);

  setUpAll(baseSetup);

  test(
    'should correctly propagate the call to repository',
    () async {
      // Arrange
      when(() => charactersRepository.saveCharacters(captureAny())).thenAnswer((_) async => null);

      // Act
      await saveCharactersUseCase.call(tCharacterDataContainer);

      // Assert
      verify(() => charactersRepository.saveCharacters(tCharacterDataContainer)).called(1);
    },
  );
}

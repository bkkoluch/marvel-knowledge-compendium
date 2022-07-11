import 'package:marvel_knowledge_compendium/core/use_cases/use_case.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_container.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/repositories/characters_repository.dart';

class SaveCharactersUseCase extends UseCase<Future<void>, CharacterDataContainer> {
  final CharactersRepository charactersRepository;

  SaveCharactersUseCase(this.charactersRepository);

  @override
  Future<void> call(CharacterDataContainer characterDataContainer) async =>
      await this.charactersRepository.saveCharacters(characterDataContainer);
}

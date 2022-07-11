import 'package:marvel_knowledge_compendium/core/use_cases/use_case.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_container.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/repositories/characters_repository.dart';

class GetSavedCharactersUseCase extends UseCase<CharacterDataContainer?, NoParams> {
  final CharactersRepository charactersRepository;

  GetSavedCharactersUseCase(this.charactersRepository);

  @override
  CharacterDataContainer? call([NoParams? _]) => this.charactersRepository.getSavedCharacters();
}

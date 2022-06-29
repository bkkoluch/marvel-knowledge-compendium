import 'package:marvel_knowledge_compendium/core/use_cases/use_case.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_data_wrapper_dto.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/repositories/characters_repository.dart';

class GetCharacterByIdUseCase extends UseCase<Future<CharacterDataWrapperDto>, String> {
  final CharactersRepository charactersRepository;

  GetCharacterByIdUseCase(this.charactersRepository);

  @override
  Future<CharacterDataWrapperDto> call(String characterId) async =>
      await charactersRepository.getCharactersById(characterId);
}

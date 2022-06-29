import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_data_wrapper_dto.dart';

abstract class CharactersRemoteDataSource {
  Future<CharacterDataWrapperDto> getCharactersList();

  Future<CharacterDataWrapperDto> getCharacterById(String characterId);
}

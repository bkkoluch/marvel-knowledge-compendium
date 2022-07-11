import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_container.dart';

abstract class CharactersLocalDataSource {
  Future<void> saveCharacters(CharacterDataContainer characterDataContainer);

  CharacterDataContainer? getSavedCharacters();
}

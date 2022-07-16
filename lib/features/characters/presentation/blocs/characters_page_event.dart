import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_container.dart';

abstract class CharactersPageEvent {}

class CharactersPageSaveInitialUnfilteredDataEvent extends CharactersPageEvent {
  final CharacterDataContainer characterDataContainer;

  CharactersPageSaveInitialUnfilteredDataEvent(this.characterDataContainer);
}

class CharactersPageLoadMoreCharactersEvent extends CharactersPageEvent {
  final int offset;

  CharactersPageLoadMoreCharactersEvent(this.offset);
}

class CharactersPageSearchCharacterByNameEvent extends CharactersPageEvent {
  final String name;

  CharactersPageSearchCharacterByNameEvent(this.name);
}

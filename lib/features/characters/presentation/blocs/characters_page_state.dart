import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_knowledge_compendium/core/shared_entities/data_container.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_container.dart';

part 'characters_page_state.freezed.dart';

enum CharactersPageStateStatus {
  initial,
  charactersWrapperLoaded,
  loadingNewCharacters,
  searchSubmitted,
  error,
}

@freezed
class CharactersPageState with _$CharactersPageState {
  const CharactersPageState._();

  const factory CharactersPageState({
    required CharactersPageStateStatus status,
    CharacterDataContainer? characterDataContainer,
  }) = _CharactersPageState;

  factory CharactersPageState.initial() => const CharactersPageState(status: CharactersPageStateStatus.initial);

  bool get isInitialState => status == CharactersPageStateStatus.initial;

  bool get isCharactersWrapperLoaded => status == CharactersPageStateStatus.charactersWrapperLoaded;

  bool get isLoadingNewCharacters => status == CharactersPageStateStatus.loadingNewCharacters;

  bool get wereCharactersSearched => status == CharactersPageStateStatus.searchSubmitted;

  bool get areMoreCharactersAvailable =>
      ((characterDataContainer?.results ?? []).length) < (characterDataContainer?.total ?? 0);
}

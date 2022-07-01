import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_knowledge_compendium/core/shared_entities/data_container.dart';
import 'package:marvel_knowledge_compendium/core/shared_entities/data_wrapper.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_wrapper.dart';

part 'home_page_state.freezed.dart';

enum HomePageStateStatus {
  initial,
  loading,
  loaded,
  error,
}

@freezed
class HomePageState with _$HomePageState {
  const HomePageState._();

  const factory HomePageState({
    required HomePageStateStatus status,
    required List<String> homePageImages,
    CharacterDataWrapper? unfilteredCharacterDataWrapper,
  }) = _HomePageState;

  factory HomePageState.initial() => const HomePageState(
        status: HomePageStateStatus.loading,
        homePageImages: [],
      );
}

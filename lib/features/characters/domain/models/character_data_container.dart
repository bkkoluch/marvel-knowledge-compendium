import 'package:marvel_knowledge_compendium/core/shared_entities/data_container.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_data_container_dto.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character.dart';

typedef CharacterDataContainer = DataContainer<Character>;

extension CharacterDataContainerExtension on CharacterDataContainer {
  static CharacterDataContainer fromDto(CharacterDataContainerDto dto) => CharacterDataContainer(
        offset: dto.offset,
        limit: dto.limit,
        total: dto.total,
        count: dto.count,
        results:
            dto.results != null ? dto.results?.map((characterDto) => Character.fromDto(characterDto)).toList() : null,
      );

  static Map<String, dynamic> fullToJson(CharacterDataContainer characterDataContainer) =>
      characterDataContainer.toJson((Character character) => character.toJson());

  static CharacterDataContainer fullFromJson(Map<String, dynamic> json) => CharacterDataContainer.fromJson(
        json,
        (characterDtoData) => Character.fromJson(characterDtoData as Map<String, dynamic>),
      );
}

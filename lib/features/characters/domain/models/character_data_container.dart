import 'package:marvel_knowledge_compendium/core/shared_entities/data_container.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_data_container_dto.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character.dart';

typedef CharacterDataContainer = DataContainer<Character>;

extension CharacterDataContainerExtension on CharacterDataContainer {
  static CharacterDataContainer fromDto(CharacterDataContainerDto dto) {
    return CharacterDataContainer(
      offset: dto.offset,
      limit: dto.limit,
      total: dto.total,
      count: dto.count,
      results:
          dto.results != null ? dto.results?.map((characterDto) => Character.fromDto(characterDto)).toList() : null,
    );
  }
}

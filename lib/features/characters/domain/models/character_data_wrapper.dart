import 'package:marvel_knowledge_compendium/core/shared_entities/data_wrapper.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_data_wrapper_dto.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_container.dart';

typedef CharacterDataWrapper = DataWrapper<CharacterDataContainer>;

extension CharacterDataWrapperExtension on CharacterDataWrapper {
  static CharacterDataWrapper fromDto(CharacterDataWrapperDto dto) => CharacterDataWrapper(
        code: dto.code,
        status: dto.status,
        copyright: dto.copyright,
        attributionText: dto.attributionText,
        attributionHTML: dto.attributionHTML,
        etag: dto.etag,
        data: dto.data != null ? CharacterDataContainerExtension.fromDto(dto.data!) : null,
      );

  static Map<String, dynamic> fullToJson(CharacterDataWrapper characterDataWrapper) => characterDataWrapper.toJson(
        (CharacterDataContainer characterDataContainer) =>
            characterDataContainer.toJson((Character character) => character.toJson()),
      );

  static CharacterDataWrapper fullFromJson(Map<String, dynamic> json) => CharacterDataWrapper.fromJson(
        json,
        (characterDataContainerData) => CharacterDataContainer.fromJson(
          characterDataContainerData as Map<String, dynamic>,
          (characterDtoData) => Character.fromJson(characterDtoData as Map<String, dynamic>),
        ),
      );
}

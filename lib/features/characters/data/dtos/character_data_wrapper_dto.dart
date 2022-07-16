import 'package:marvel_knowledge_compendium/core/shared_entities/data_wrapper.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_data_container_dto.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_dto.dart';

typedef CharacterDataWrapperDto = DataWrapper<CharacterDataContainerDto>;

extension CharacterDataWrapperDtoExtension on CharacterDataWrapperDto {
  static Map<String, dynamic> fullToJson(CharacterDataWrapperDto characterDataWrapperDto) =>
      characterDataWrapperDto.toJson(
        (CharacterDataContainerDto characterDataContainerDto) =>
            characterDataContainerDto.toJson((CharacterDto characterDto) => characterDto.toJson()),
      );

  static CharacterDataWrapperDto fullFromJson(Map<String, dynamic> json) => CharacterDataWrapperDto.fromJson(
        json,
        (characterDataWrapperData) => CharacterDataContainerDto.fromJson(
          characterDataWrapperData as Map<String, dynamic>,
          (characterDtoData) => CharacterDto.fromJson(characterDtoData as Map<String, dynamic>),
        ),
      );
}

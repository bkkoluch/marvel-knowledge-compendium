import 'package:marvel_knowledge_compendium/core/shared_entities/data_wrapper.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/dtos/comic_data_container_dto.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/dtos/comic_dto.dart';

typedef ComicDataWrapperDto = DataWrapper<ComicDataContainerDto>;

extension ComicDataWrapperDtoExtension on ComicDataWrapperDto {
  static Map<String, dynamic> fullToJson(ComicDataWrapperDto characterDataWrapperDto) => characterDataWrapperDto.toJson(
        (ComicDataContainerDto comicDataContainerDto) =>
            comicDataContainerDto.toJson((ComicDto comicDto) => comicDto.toJson()),
      );

  static ComicDataWrapperDto fullFromJson(Map<String, dynamic> json) => ComicDataWrapperDto.fromJson(
        json,
        (comicDataWrapperData) => ComicDataContainerDto.fromJson(
          comicDataWrapperData as Map<String, dynamic>,
          (comicDtoData) => ComicDto.fromJson(comicDtoData as Map<String, dynamic>),
        ),
      );
}

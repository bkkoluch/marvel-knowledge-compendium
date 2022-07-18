import 'package:marvel_knowledge_compendium/core/shared_entities/data_container.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/dtos/comic_data_container_dto.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic.dart';

typedef ComicDataContainer = DataContainer<Comic>;

extension ComicDataContainerExtension on ComicDataContainer {
  static ComicDataContainer fromDto(ComicDataContainerDto dto) => ComicDataContainer(
        offset: dto.offset,
        limit: dto.limit,
        total: dto.total,
        count: dto.count,
        results: dto.results != null ? dto.results?.map((comicDto) => Comic.fromDto(comicDto)).toList() : null,
      );

  static Map<String, dynamic> fullToJson(ComicDataContainer comicDataContainer) =>
      comicDataContainer.toJson((Comic comic) => comic.toJson());

  static ComicDataContainer fullFromJson(Map<String, dynamic> json) => ComicDataContainer.fromJson(
        json,
        (comicDtoData) => Comic.fromJson(comicDtoData as Map<String, dynamic>),
      );
}

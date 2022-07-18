import 'package:marvel_knowledge_compendium/core/shared_entities/data_wrapper.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/dtos/comic_data_wrapper_dto.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic_data_container.dart';

typedef ComicDataWrapper = DataWrapper<ComicDataContainer>;

extension ComicDataWrapperExtension on ComicDataWrapper {
  static ComicDataWrapper fromDto(ComicDataWrapperDto dto) => ComicDataWrapper(
        code: dto.code,
        status: dto.status,
        copyright: dto.copyright,
        attributionText: dto.attributionText,
        attributionHTML: dto.attributionHTML,
        etag: dto.etag,
        data: dto.data != null ? ComicDataContainerExtension.fromDto(dto.data!) : null,
      );

  static ComicDataWrapper fullFromJson(Map<String, dynamic> json) => ComicDataWrapper.fromJson(
        json,
        (comicDataContainerData) => ComicDataContainer.fromJson(
          comicDataContainerData as Map<String, dynamic>,
          (comicDtoData) => Comic.fromJson(comicDtoData as Map<String, dynamic>),
        ),
      );
}

import 'package:marvel_knowledge_compendium/core/data/dtos/stories/story_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/stories/story_summary.dart';
import 'package:marvel_knowledge_compendium/core/shared_entities/generic_list.dart';

typedef StoryList = GenericList<StorySummary>;

extension StoryListExtension on StoryList {
  static StoryList fromDto(StoryListDto dto) => StoryList(
        available: dto.available,
        returned: dto.returned,
        collectionURI: dto.collectionURI,
        items: dto.items?.map((item) => StorySummary.fromDto(item)).toList(),
      );
}

import 'package:marvel_knowledge_compendium/core/data/dtos/comics/comic_summary_dto.dart';
import 'package:marvel_knowledge_compendium/core/shared_entities/common_summary.dart';

typedef ComicSummary = CommonSummary;

extension ComicSummaryExtension on ComicSummary {
  static ComicSummary fromDto(ComicSummaryDto dto) => ComicSummary(resourceURI: dto.resourceURI, name: dto.name);
}

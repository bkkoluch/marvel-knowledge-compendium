import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/characters/character_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/comics/comic_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/creators/creator_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/events/event_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/series/series_summary_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/shared/image_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/shared/url_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/stories/story_list_dto.dart';

part 'series_dto.freezed.dart';
part 'series_dto.g.dart';

@freezed
class SeriesDto with _$SeriesDto {
  const SeriesDto._();

  const factory SeriesDto({
    int? id,
    String? title,
    String? description,
    String? resourceURI,
    List<UrlDto>? urls,
    int? startYear,
    int? endYear,
    String? rating,
    DateTime? modified,
    ImageDto? thumbnail,
    ComicListDto? comics,
    StoryListDto? stories,
    EventListDto? events,
    CharacterListDto? characters,
    CreatorListDto? creators,
    SeriesSummaryDto? next,
    SeriesSummaryDto? previous,
  }) = _SeriesDto;

  factory SeriesDto.fromJson(Map<String, dynamic> json) => _$SeriesDtoFromJson(json);
}

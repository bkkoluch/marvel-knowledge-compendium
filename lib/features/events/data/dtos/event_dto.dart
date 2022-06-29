import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/characters/character_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/comics/comic_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/creators/creator_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/events/event_summary_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/series/series_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/shared/image_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/shared/url_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/stories/story_list_dto.dart';

part 'event_dto.freezed.dart';
part 'event_dto.g.dart';

@freezed
class EventDto with _$EventDto {
  const EventDto._();

  const factory EventDto({
    int? id,
    String? title,
    String? description,
    String? resourceURI,
    List<UrlDto>? urls,
    DateTime? modified,
    DateTime? start,
    DateTime? end,
    ImageDto? thumbnail,
    ComicListDto? comics,
    StoryListDto? stories,
    SeriesListDto? series,
    CharacterListDto? characters,
    CreatorListDto? creators,
    EventSummaryDto? next,
    EventSummaryDto? previous,
  }) = _EventDto;

  factory EventDto.fromJson(Map<String, dynamic> json) => _$EventDtoFromJson(json);
}

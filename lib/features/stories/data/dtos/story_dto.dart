import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/characters/character_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/comics/comic_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/comics/comic_summary_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/creators/creator_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/events/event_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/series/series_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/shared/image_dto.dart';

part 'story_dto.freezed.dart';
part 'story_dto.g.dart';

@freezed
class StoryDto with _$StoryDto {
  const StoryDto._();

  const factory StoryDto({
    int? id,
    String? title,
    String? description,
    String? resourceURI,
    DateTime? modified,
    ImageDto? thumbnail,
    ComicListDto? comics,
    SeriesListDto? series,
    EventListDto? events,
    CharacterListDto? characters,
    CreatorListDto? creators,
    ComicSummaryDto? originalIssue,
  }) = _StoryDto;

  factory StoryDto.fromJson(Map<String, dynamic> json) => _$StoryDtoFromJson(json);
}

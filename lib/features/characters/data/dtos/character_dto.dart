import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/comics/comic_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/events/event_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/series/series_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/shared/image_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/shared/url_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/stories/story_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/stories/story_summary_dto.dart';
import 'package:marvel_knowledge_compendium/core/shared_entities/common_summary.dart';
import 'package:marvel_knowledge_compendium/core/shared_entities/generic_list.dart';

part 'character_dto.freezed.dart';
part 'character_dto.g.dart';

@freezed
class CharacterDto with _$CharacterDto {
  const CharacterDto._();

  const factory CharacterDto({
    int? id,
    String? name,
    String? description,
    DateTime? modified,
    String? resourceURI,
    List<UrlDto>? urls,
    ImageDto? thumbnail,
    ComicListDto? comics,
    StoryListDto? stories,
    EventListDto? events,
    SeriesListDto? series,
  }) = _CharacterDto;

  factory CharacterDto.fromJson(Map<String, dynamic> json) => _$CharacterDtoFromJson(json);
}

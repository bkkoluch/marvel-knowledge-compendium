import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/comics/comic_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/events/event_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/series/series_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/shared/image_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/shared/url_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/stories/story_list_dto.dart';

part 'creator_dto.freezed.dart';
part 'creator_dto.g.dart';

@freezed
class CreatorDto with _$CreatorDto {
  const CreatorDto._();

  const factory CreatorDto({
    int? id,
    String? firstName,
    String? middleName,
    String? lastName,
    String? suffix,
    String? fullName,
    DateTime? modified,
    String? resourceURI,
    List<UrlDto>? urls,
    ImageDto? thumbnail,
    SeriesListDto? series,
    StoryListDto? stories,
    ComicListDto? comics,
    EventListDto? events,
  }) = _CreatorDto;

  factory CreatorDto.fromJson(Map<String, dynamic> json) => _$CreatorDtoFromJson(json);
}

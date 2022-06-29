import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/characters/character_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/comics/comic_summary_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/creators/creator_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/events/event_list_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/series/series_summary_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/shared/image_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/shared/text_object_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/shared/url_dto.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/stories/story_list_dto.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/dtos/comic_date_dto.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/dtos/comic_price_dto.dart';

part 'comic_dto.freezed.dart';
part 'comic_dto.g.dart';

@freezed
class ComicDto with _$ComicDto {
  const ComicDto._();

  const factory ComicDto({
    int? id,
    int? digitalId,
    String? title,
    double? issueNumber,
    String? variantDescription,
    String? description,
    DateTime? modified,
    String? isbn,
    String? upc,
    String? diamondCode,
    String? ean,
    String? issn,
    String? format,
    int? pageCount,
    List<TextObjectDto>? textObjects,
    String? resourceURI,
    List<UrlDto>? urls,
    SeriesSummaryDto? series,
    List<ComicSummaryDto>? variants,
    List<ComicSummaryDto>? collections,
    List<ComicSummaryDto>? collectedIssues,
    List<ComicDateDto>? dates,
    List<ComicPriceDto>? prices,
    ImageDto? thumbnail,
    List<ImageDto>? images,
    CreatorListDto? creators,
    CharacterListDto? characters,
    StoryListDto? stories,
    EventListDto? events,
  }) = _ComicDto;

  factory ComicDto.fromJson(Map<String, dynamic> json) => _$ComicDtoFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/characters/character_list.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/comics/comic_summary.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/creators/creator_list.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/events/event_list.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/shared/image.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/shared/text_object.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/stories/story_list.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/stories/story_summary.dart';
import 'package:marvel_knowledge_compendium/core/shared_entities/common_summary.dart';
import 'package:marvel_knowledge_compendium/core/shared_entities/generic_list.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/dtos/comic_dto.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic_date.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic_price.dart';

part 'comic.freezed.dart';
part 'comic.g.dart';

@freezed
class Comic with _$Comic {
  const Comic._();

  const factory Comic({
    int? id,
    int? digitalId,
    @JsonKey(name: 'title') String? name,
    double? issueNumber,
    String? variantDescription,
    DateTime? modified,
    String? isbn,
    String? upc,
    String? diamondCode,
    String? ean,
    String? issn,
    String? format,
    int? pageCount,
    List<TextObject>? textObjects,
    List<ComicSummary>? variants,
    List<ComicSummary>? collections,
    List<ComicSummary>? collectedIssues,
    List<ComicDate>? dates,
    List<ComicPrice>? prices,
    Image? thumbnail,
    List<Image>? images,
    CreatorList? creators,
    CharacterList? characters,
    StoryList? stories,
    EventList? events,
  }) = _Comic;

  factory Comic.fromJson(Map<String, dynamic> json) => _$ComicFromJson(json);

  factory Comic.fromDto(ComicDto dto) => Comic(
        id: dto.id,
        digitalId: dto.digitalId,
        name: dto.title,
        issueNumber: dto.issueNumber,
        variantDescription: dto.variantDescription,
        modified: dto.modified,
        isbn: dto.isbn,
        upc: dto.upc,
        diamondCode: dto.diamondCode,
        ean: dto.ean,
        issn: dto.issn,
        format: dto.format,
        pageCount: dto.pageCount,
        textObjects: dto.textObjects != null ? dto.textObjects?.map((dto) => TextObject.fromDto(dto)).toList() : null,
        variants: dto.variants != null ? dto.variants?.map((dto) => ComicSummaryExtension.fromDto(dto)).toList() : null,
        collections:
            dto.collections != null ? dto.collections?.map((dto) => ComicSummaryExtension.fromDto(dto)).toList() : null,
        collectedIssues: dto.collectedIssues != null
            ? dto.collectedIssues?.map((dto) => ComicSummaryExtension.fromDto(dto)).toList()
            : null,
        dates: dto.dates != null ? dto.dates?.map((dto) => ComicDate.fromDto(dto)).toList() : null,
        prices: dto.prices != null ? dto.prices?.map((dto) => ComicPrice.fromDto(dto)).toList() : null,
        thumbnail: dto.thumbnail != null ? Image.fromDto(dto.thumbnail!) : null,
        images: dto.images != null ? dto.images?.map((imageDto) => Image.fromDto(imageDto)).toList() : null,
        creators: dto.creators,
        characters: dto.characters,
        stories: dto.stories != null ? StoryListExtension.fromDto(dto.stories!) : null,
        events: dto.events,
      );
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/comics/comic_list.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/events/event_list.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/series/series_list.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/shared/image.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/shared/url.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/stories/story_list.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/stories/story_summary.dart';
import 'package:marvel_knowledge_compendium/core/shared_entities/common_summary.dart';
import 'package:marvel_knowledge_compendium/core/shared_entities/generic_list.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_dto.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  const Character._();

  const factory Character({
    int? id,
    String? name,
    String? description,
    DateTime? modified,
    String? resourceURI,
    List<Url>? urls,
    Image? thumbnail,
    ComicList? comics,
    StoryList? stories,
    EventList? events,
    SeriesList? series,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);

  factory Character.fromDto(CharacterDto dto) => Character(
        id: dto.id,
        name: dto.name,
        description: dto.description,
        modified: dto.modified,
        resourceURI: dto.resourceURI,
        urls: dto.urls != null ? dto.urls?.map((urlDto) => Url.fromDto(urlDto)).toList() : null,
        thumbnail: dto.thumbnail != null ? Image.fromDto(dto.thumbnail!) : null,
        comics: dto.comics,
        stories: dto.stories != null ? StoryListExtension.fromDto(dto.stories!) : null,
        events: dto.events,
        series: dto.events,
      );
}

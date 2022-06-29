import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/comics/comic_list.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/events/event_list.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/series/series_list.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/shared/image.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/shared/url.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/stories/story_list_dto.dart';

part 'character.freezed.dart';

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
    Image? image,
    ComicList? comics,
    StoryList? stories,
    EventList? events,
    SeriesList? series,
  }) = _Character;
}

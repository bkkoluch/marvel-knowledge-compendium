// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventDto _$$_EventDtoFromJson(Map<String, dynamic> json) => _$_EventDto(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      resourceURI: json['resourceURI'] as String?,
      urls: (json['urls'] as List<dynamic>?)
          ?.map((e) => UrlDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      modified: json['modified'] == null
          ? null
          : DateTime.parse(json['modified'] as String),
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
      thumbnail: json['thumbnail'] == null
          ? null
          : ImageDto.fromJson(json['thumbnail'] as Map<String, dynamic>),
      comics: json['comics'],
      stories: json['stories'],
      series: json['series'],
      characters: json['characters'],
      creators: json['creators'],
      next: json['next'],
      previous: json['previous'],
    );

Map<String, dynamic> _$$_EventDtoToJson(_$_EventDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'resourceURI': instance.resourceURI,
      'urls': instance.urls,
      'modified': instance.modified?.toIso8601String(),
      'start': instance.start?.toIso8601String(),
      'end': instance.end?.toIso8601String(),
      'thumbnail': instance.thumbnail,
      'comics': instance.comics,
      'stories': instance.stories,
      'series': instance.series,
      'characters': instance.characters,
      'creators': instance.creators,
      'next': instance.next,
      'previous': instance.previous,
    };

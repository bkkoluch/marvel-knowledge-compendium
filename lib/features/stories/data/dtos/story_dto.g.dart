// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoryDto _$$_StoryDtoFromJson(Map<String, dynamic> json) => _$_StoryDto(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      resourceURI: json['resourceURI'] as String?,
      modified: json['modified'] == null
          ? null
          : DateTime.parse(json['modified'] as String),
      thumbnail: json['thumbnail'] == null
          ? null
          : ImageDto.fromJson(json['thumbnail'] as Map<String, dynamic>),
      comics: json['comics'],
      series: json['series'],
      events: json['events'],
      characters: json['characters'],
      creators: json['creators'],
      originalIssue: json['originalIssue'],
    );

Map<String, dynamic> _$$_StoryDtoToJson(_$_StoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'resourceURI': instance.resourceURI,
      'modified': instance.modified?.toIso8601String(),
      'thumbnail': instance.thumbnail,
      'comics': instance.comics,
      'series': instance.series,
      'events': instance.events,
      'characters': instance.characters,
      'creators': instance.creators,
      'originalIssue': instance.originalIssue,
    };

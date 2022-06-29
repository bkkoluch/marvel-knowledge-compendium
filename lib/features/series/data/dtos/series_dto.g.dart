// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SeriesDto _$$_SeriesDtoFromJson(Map<String, dynamic> json) => _$_SeriesDto(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      resourceURI: json['resourceURI'] as String?,
      urls: (json['urls'] as List<dynamic>?)
          ?.map((e) => UrlDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      startYear: json['startYear'] as int?,
      endYear: json['endYear'] as int?,
      rating: json['rating'] as String?,
      modified: json['modified'] == null
          ? null
          : DateTime.parse(json['modified'] as String),
      thumbnail: json['thumbnail'] == null
          ? null
          : ImageDto.fromJson(json['thumbnail'] as Map<String, dynamic>),
      comics: json['comics'],
      stories: json['stories'],
      events: json['events'],
      characters: json['characters'],
      creators: json['creators'],
      next: json['next'],
      previous: json['previous'],
    );

Map<String, dynamic> _$$_SeriesDtoToJson(_$_SeriesDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'resourceURI': instance.resourceURI,
      'urls': instance.urls,
      'startYear': instance.startYear,
      'endYear': instance.endYear,
      'rating': instance.rating,
      'modified': instance.modified?.toIso8601String(),
      'thumbnail': instance.thumbnail,
      'comics': instance.comics,
      'stories': instance.stories,
      'events': instance.events,
      'characters': instance.characters,
      'creators': instance.creators,
      'next': instance.next,
      'previous': instance.previous,
    };

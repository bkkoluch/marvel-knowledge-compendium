// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharacterDto _$$_CharacterDtoFromJson(Map<String, dynamic> json) =>
    _$_CharacterDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      modified: json['modified'] == null
          ? null
          : DateTime.parse(json['modified'] as String),
      resourceURI: json['resourceURI'] as String?,
      urls: (json['urls'] as List<dynamic>?)
          ?.map((e) => UrlDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      thumbnail: json['thumbnail'] == null
          ? null
          : ImageDto.fromJson(json['thumbnail'] as Map<String, dynamic>),
      comics: json['comics'] == null
          ? null
          : GenericList<CommonSummary>.fromJson(
              json['comics'] as Map<String, dynamic>,
              (value) => CommonSummary.fromJson(value as Map<String, dynamic>)),
      stories: json['stories'] == null
          ? null
          : GenericList<StorySummaryDto>.fromJson(
              json['stories'] as Map<String, dynamic>,
              (value) =>
                  StorySummaryDto.fromJson(value as Map<String, dynamic>)),
      events: json['events'] == null
          ? null
          : GenericList<CommonSummary>.fromJson(
              json['events'] as Map<String, dynamic>,
              (value) => CommonSummary.fromJson(value as Map<String, dynamic>)),
      series: json['series'] == null
          ? null
          : GenericList<CommonSummary>.fromJson(
              json['series'] as Map<String, dynamic>,
              (value) => CommonSummary.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$_CharacterDtoToJson(_$_CharacterDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'modified': instance.modified?.toIso8601String(),
      'resourceURI': instance.resourceURI,
      'urls': instance.urls,
      'thumbnail': instance.thumbnail,
      'comics': instance.comics?.toJson(
        (value) => value,
      ),
      'stories': instance.stories?.toJson(
        (value) => value,
      ),
      'events': instance.events?.toJson(
        (value) => value,
      ),
      'series': instance.series?.toJson(
        (value) => value,
      ),
    };

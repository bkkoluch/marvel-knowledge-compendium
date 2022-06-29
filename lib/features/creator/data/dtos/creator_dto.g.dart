// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creator_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreatorDto _$$_CreatorDtoFromJson(Map<String, dynamic> json) =>
    _$_CreatorDto(
      id: json['id'] as int?,
      firstName: json['firstName'] as String?,
      middleName: json['middleName'] as String?,
      lastName: json['lastName'] as String?,
      suffix: json['suffix'] as String?,
      fullName: json['fullName'] as String?,
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
      series: json['series'],
      stories: json['stories'],
      comics: json['comics'],
      events: json['events'],
    );

Map<String, dynamic> _$$_CreatorDtoToJson(_$_CreatorDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
      'suffix': instance.suffix,
      'fullName': instance.fullName,
      'modified': instance.modified?.toIso8601String(),
      'resourceURI': instance.resourceURI,
      'urls': instance.urls,
      'thumbnail': instance.thumbnail,
      'series': instance.series,
      'stories': instance.stories,
      'comics': instance.comics,
      'events': instance.events,
    };

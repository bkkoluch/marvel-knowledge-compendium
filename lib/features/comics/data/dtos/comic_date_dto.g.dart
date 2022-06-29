// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_date_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComicDateDto _$$_ComicDateDtoFromJson(Map<String, dynamic> json) =>
    _$_ComicDateDto(
      type: json['type'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$_ComicDateDtoToJson(_$_ComicDateDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'date': instance.date?.toIso8601String(),
    };

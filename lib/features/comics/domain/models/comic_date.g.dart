// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_date.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComicDate _$$_ComicDateFromJson(Map<String, dynamic> json) => _$_ComicDate(
      type: json['type'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$_ComicDateToJson(_$_ComicDate instance) =>
    <String, dynamic>{
      'type': instance.type,
      'date': instance.date?.toIso8601String(),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataContainer<T> _$DataContainerFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    DataContainer<T>(
      offset: json['offset'] as int?,
      limit: json['limit'] as int?,
      total: json['total'] as int?,
      count: json['count'] as int?,
      results: (json['results'] as List<dynamic>?)?.map(fromJsonT).toList(),
    );

Map<String, dynamic> _$DataContainerToJson<T>(
  DataContainer<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
      'results': instance.results?.map(toJsonT).toList(),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericList<T> _$GenericListFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    GenericList<T>(
      available: json['available'] as int?,
      returned: json['returned'] as int?,
      collectionURI: json['collectionURI'] as String?,
      items: (json['items'] as List<dynamic>?)?.map(fromJsonT).toList(),
    );

Map<String, dynamic> _$GenericListToJson<T>(
  GenericList<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'available': instance.available,
      'returned': instance.returned,
      'collectionURI': instance.collectionURI,
      'items': instance.items?.map(toJsonT).toList(),
    };

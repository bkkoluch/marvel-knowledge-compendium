// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataWrapper<T> _$DataWrapperFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    DataWrapper<T>(
      code: json['code'] as int?,
      status: json['status'] as String?,
      copyright: json['copyright'] as String?,
      attributionText: json['attributionText'] as String?,
      attributionHTML: json['attributionHTML'] as String?,
      etag: json['etag'] as String?,
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
    );

Map<String, dynamic> _$DataWrapperToJson<T>(
  DataWrapper<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'copyright': instance.copyright,
      'attributionText': instance.attributionText,
      'attributionHTML': instance.attributionHTML,
      'etag': instance.etag,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

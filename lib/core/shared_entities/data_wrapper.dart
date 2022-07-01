import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_wrapper.freezed.dart';
part 'data_wrapper.g.dart';

@freezed
@JsonSerializable(genericArgumentFactories: true)
class DataWrapper<T> with _$DataWrapper<T> {
  const DataWrapper._();

  const factory DataWrapper({
    int? code,
    String? status,
    String? copyright,
    String? attributionText,
    String? attributionHTML,
    String? etag,
    T? data,
  }) = _DataWrapper<T>;

  factory DataWrapper.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) {
    return _$DataWrapperFromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) => _$DataWrapperToJson(this, toJsonT);
}

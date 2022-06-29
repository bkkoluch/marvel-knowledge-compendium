import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_container.freezed.dart';
part 'data_container.g.dart';

@freezed
@JsonSerializable(genericArgumentFactories: true)
class DataContainer<T> with _$DataContainer<T> {
  const DataContainer._();

  const factory DataContainer({
    int? offset,
    int? limit,
    int? total,
    int? count,
    List<T>? results,
  }) = _DataContainer<T>;

  factory DataContainer.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) {
    return _$DataContainerFromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) => _$DataContainerToJson(this, toJsonT);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_list.freezed.dart';
part 'generic_list.g.dart';

@freezed
@JsonSerializable(genericArgumentFactories: true)
class GenericList<T> with _$GenericList<T> {
  const GenericList._();

  const factory GenericList({
    int? available,
    int? returned,
    String? collectionURI,
    List<T>? items,
  }) = _GenericList<T>;

  factory GenericList.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) {
    return _$GenericListFromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) => _$GenericListToJson(this, toJsonT);
}

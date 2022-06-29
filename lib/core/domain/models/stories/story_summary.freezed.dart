// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'story_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StorySummary _$StorySummaryFromJson(Map<String, dynamic> json) {
  return _StorySummary.fromJson(json);
}

/// @nodoc
mixin _$StorySummary {
  String? get resourceURI => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StorySummaryCopyWith<StorySummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorySummaryCopyWith<$Res> {
  factory $StorySummaryCopyWith(
          StorySummary value, $Res Function(StorySummary) then) =
      _$StorySummaryCopyWithImpl<$Res>;
  $Res call({String? resourceURI, String? name, String? type});
}

/// @nodoc
class _$StorySummaryCopyWithImpl<$Res> implements $StorySummaryCopyWith<$Res> {
  _$StorySummaryCopyWithImpl(this._value, this._then);

  final StorySummary _value;
  // ignore: unused_field
  final $Res Function(StorySummary) _then;

  @override
  $Res call({
    Object? resourceURI = freezed,
    Object? name = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      resourceURI: resourceURI == freezed
          ? _value.resourceURI
          : resourceURI // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_StorySummaryCopyWith<$Res>
    implements $StorySummaryCopyWith<$Res> {
  factory _$$_StorySummaryCopyWith(
          _$_StorySummary value, $Res Function(_$_StorySummary) then) =
      __$$_StorySummaryCopyWithImpl<$Res>;
  @override
  $Res call({String? resourceURI, String? name, String? type});
}

/// @nodoc
class __$$_StorySummaryCopyWithImpl<$Res>
    extends _$StorySummaryCopyWithImpl<$Res>
    implements _$$_StorySummaryCopyWith<$Res> {
  __$$_StorySummaryCopyWithImpl(
      _$_StorySummary _value, $Res Function(_$_StorySummary) _then)
      : super(_value, (v) => _then(v as _$_StorySummary));

  @override
  _$_StorySummary get _value => super._value as _$_StorySummary;

  @override
  $Res call({
    Object? resourceURI = freezed,
    Object? name = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_StorySummary(
      resourceURI: resourceURI == freezed
          ? _value.resourceURI
          : resourceURI // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StorySummary extends _StorySummary {
  const _$_StorySummary({this.resourceURI, this.name, this.type}) : super._();

  factory _$_StorySummary.fromJson(Map<String, dynamic> json) =>
      _$$_StorySummaryFromJson(json);

  @override
  final String? resourceURI;
  @override
  final String? name;
  @override
  final String? type;

  @override
  String toString() {
    return 'StorySummary(resourceURI: $resourceURI, name: $name, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StorySummary &&
            const DeepCollectionEquality()
                .equals(other.resourceURI, resourceURI) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(resourceURI),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_StorySummaryCopyWith<_$_StorySummary> get copyWith =>
      __$$_StorySummaryCopyWithImpl<_$_StorySummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StorySummaryToJson(this);
  }
}

abstract class _StorySummary extends StorySummary {
  const factory _StorySummary(
      {final String? resourceURI,
      final String? name,
      final String? type}) = _$_StorySummary;
  const _StorySummary._() : super._();

  factory _StorySummary.fromJson(Map<String, dynamic> json) =
      _$_StorySummary.fromJson;

  @override
  String? get resourceURI => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StorySummaryCopyWith<_$_StorySummary> get copyWith =>
      throw _privateConstructorUsedError;
}

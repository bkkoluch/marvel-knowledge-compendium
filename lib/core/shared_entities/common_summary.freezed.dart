// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'common_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommonSummary _$CommonSummaryFromJson(Map<String, dynamic> json) {
  return _CommonSummary.fromJson(json);
}

/// @nodoc
mixin _$CommonSummary {
  String? get resourceURI => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonSummaryCopyWith<CommonSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonSummaryCopyWith<$Res> {
  factory $CommonSummaryCopyWith(
          CommonSummary value, $Res Function(CommonSummary) then) =
      _$CommonSummaryCopyWithImpl<$Res>;
  $Res call({String? resourceURI, String? name});
}

/// @nodoc
class _$CommonSummaryCopyWithImpl<$Res>
    implements $CommonSummaryCopyWith<$Res> {
  _$CommonSummaryCopyWithImpl(this._value, this._then);

  final CommonSummary _value;
  // ignore: unused_field
  final $Res Function(CommonSummary) _then;

  @override
  $Res call({
    Object? resourceURI = freezed,
    Object? name = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$$_CommonSummaryCopyWith<$Res>
    implements $CommonSummaryCopyWith<$Res> {
  factory _$$_CommonSummaryCopyWith(
          _$_CommonSummary value, $Res Function(_$_CommonSummary) then) =
      __$$_CommonSummaryCopyWithImpl<$Res>;
  @override
  $Res call({String? resourceURI, String? name});
}

/// @nodoc
class __$$_CommonSummaryCopyWithImpl<$Res>
    extends _$CommonSummaryCopyWithImpl<$Res>
    implements _$$_CommonSummaryCopyWith<$Res> {
  __$$_CommonSummaryCopyWithImpl(
      _$_CommonSummary _value, $Res Function(_$_CommonSummary) _then)
      : super(_value, (v) => _then(v as _$_CommonSummary));

  @override
  _$_CommonSummary get _value => super._value as _$_CommonSummary;

  @override
  $Res call({
    Object? resourceURI = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_CommonSummary(
      resourceURI: resourceURI == freezed
          ? _value.resourceURI
          : resourceURI // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommonSummary extends _CommonSummary {
  const _$_CommonSummary({this.resourceURI, this.name}) : super._();

  factory _$_CommonSummary.fromJson(Map<String, dynamic> json) =>
      _$$_CommonSummaryFromJson(json);

  @override
  final String? resourceURI;
  @override
  final String? name;

  @override
  String toString() {
    return 'CommonSummary(resourceURI: $resourceURI, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommonSummary &&
            const DeepCollectionEquality()
                .equals(other.resourceURI, resourceURI) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(resourceURI),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_CommonSummaryCopyWith<_$_CommonSummary> get copyWith =>
      __$$_CommonSummaryCopyWithImpl<_$_CommonSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommonSummaryToJson(this);
  }
}

abstract class _CommonSummary extends CommonSummary {
  const factory _CommonSummary(
      {final String? resourceURI, final String? name}) = _$_CommonSummary;
  const _CommonSummary._() : super._();

  factory _CommonSummary.fromJson(Map<String, dynamic> json) =
      _$_CommonSummary.fromJson;

  @override
  String? get resourceURI => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CommonSummaryCopyWith<_$_CommonSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

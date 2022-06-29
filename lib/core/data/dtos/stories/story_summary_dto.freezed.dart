// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'story_summary_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StorySummaryDto _$StorySummaryDtoFromJson(Map<String, dynamic> json) {
  return _StorySummaryDto.fromJson(json);
}

/// @nodoc
mixin _$StorySummaryDto {
  String? get resourceURI => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StorySummaryDtoCopyWith<StorySummaryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorySummaryDtoCopyWith<$Res> {
  factory $StorySummaryDtoCopyWith(
          StorySummaryDto value, $Res Function(StorySummaryDto) then) =
      _$StorySummaryDtoCopyWithImpl<$Res>;
  $Res call({String? resourceURI, String? name, String? type});
}

/// @nodoc
class _$StorySummaryDtoCopyWithImpl<$Res>
    implements $StorySummaryDtoCopyWith<$Res> {
  _$StorySummaryDtoCopyWithImpl(this._value, this._then);

  final StorySummaryDto _value;
  // ignore: unused_field
  final $Res Function(StorySummaryDto) _then;

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
abstract class _$$_StorySummaryDtoCopyWith<$Res>
    implements $StorySummaryDtoCopyWith<$Res> {
  factory _$$_StorySummaryDtoCopyWith(
          _$_StorySummaryDto value, $Res Function(_$_StorySummaryDto) then) =
      __$$_StorySummaryDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? resourceURI, String? name, String? type});
}

/// @nodoc
class __$$_StorySummaryDtoCopyWithImpl<$Res>
    extends _$StorySummaryDtoCopyWithImpl<$Res>
    implements _$$_StorySummaryDtoCopyWith<$Res> {
  __$$_StorySummaryDtoCopyWithImpl(
      _$_StorySummaryDto _value, $Res Function(_$_StorySummaryDto) _then)
      : super(_value, (v) => _then(v as _$_StorySummaryDto));

  @override
  _$_StorySummaryDto get _value => super._value as _$_StorySummaryDto;

  @override
  $Res call({
    Object? resourceURI = freezed,
    Object? name = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_StorySummaryDto(
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
class _$_StorySummaryDto extends _StorySummaryDto {
  const _$_StorySummaryDto({this.resourceURI, this.name, this.type})
      : super._();

  factory _$_StorySummaryDto.fromJson(Map<String, dynamic> json) =>
      _$$_StorySummaryDtoFromJson(json);

  @override
  final String? resourceURI;
  @override
  final String? name;
  @override
  final String? type;

  @override
  String toString() {
    return 'StorySummaryDto(resourceURI: $resourceURI, name: $name, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StorySummaryDto &&
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
  _$$_StorySummaryDtoCopyWith<_$_StorySummaryDto> get copyWith =>
      __$$_StorySummaryDtoCopyWithImpl<_$_StorySummaryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StorySummaryDtoToJson(this);
  }
}

abstract class _StorySummaryDto extends StorySummaryDto {
  const factory _StorySummaryDto(
      {final String? resourceURI,
      final String? name,
      final String? type}) = _$_StorySummaryDto;
  const _StorySummaryDto._() : super._();

  factory _StorySummaryDto.fromJson(Map<String, dynamic> json) =
      _$_StorySummaryDto.fromJson;

  @override
  String? get resourceURI => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StorySummaryDtoCopyWith<_$_StorySummaryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

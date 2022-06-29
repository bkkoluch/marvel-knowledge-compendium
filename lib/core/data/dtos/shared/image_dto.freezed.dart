// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageDto _$ImageDtoFromJson(Map<String, dynamic> json) {
  return _ImageDto.fromJson(json);
}

/// @nodoc
mixin _$ImageDto {
  String? get path => throw _privateConstructorUsedError;
  String? get extension => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageDtoCopyWith<ImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDtoCopyWith<$Res> {
  factory $ImageDtoCopyWith(ImageDto value, $Res Function(ImageDto) then) =
      _$ImageDtoCopyWithImpl<$Res>;
  $Res call({String? path, String? extension});
}

/// @nodoc
class _$ImageDtoCopyWithImpl<$Res> implements $ImageDtoCopyWith<$Res> {
  _$ImageDtoCopyWithImpl(this._value, this._then);

  final ImageDto _value;
  // ignore: unused_field
  final $Res Function(ImageDto) _then;

  @override
  $Res call({
    Object? path = freezed,
    Object? extension = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      extension: extension == freezed
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ImageDtoCopyWith<$Res> implements $ImageDtoCopyWith<$Res> {
  factory _$$_ImageDtoCopyWith(
          _$_ImageDto value, $Res Function(_$_ImageDto) then) =
      __$$_ImageDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? path, String? extension});
}

/// @nodoc
class __$$_ImageDtoCopyWithImpl<$Res> extends _$ImageDtoCopyWithImpl<$Res>
    implements _$$_ImageDtoCopyWith<$Res> {
  __$$_ImageDtoCopyWithImpl(
      _$_ImageDto _value, $Res Function(_$_ImageDto) _then)
      : super(_value, (v) => _then(v as _$_ImageDto));

  @override
  _$_ImageDto get _value => super._value as _$_ImageDto;

  @override
  $Res call({
    Object? path = freezed,
    Object? extension = freezed,
  }) {
    return _then(_$_ImageDto(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      extension: extension == freezed
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageDto extends _ImageDto {
  const _$_ImageDto({this.path, this.extension}) : super._();

  factory _$_ImageDto.fromJson(Map<String, dynamic> json) =>
      _$$_ImageDtoFromJson(json);

  @override
  final String? path;
  @override
  final String? extension;

  @override
  String toString() {
    return 'ImageDto(path: $path, extension: $extension)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageDto &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.extension, extension));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(extension));

  @JsonKey(ignore: true)
  @override
  _$$_ImageDtoCopyWith<_$_ImageDto> get copyWith =>
      __$$_ImageDtoCopyWithImpl<_$_ImageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageDtoToJson(this);
  }
}

abstract class _ImageDto extends ImageDto {
  const factory _ImageDto({final String? path, final String? extension}) =
      _$_ImageDto;
  const _ImageDto._() : super._();

  factory _ImageDto.fromJson(Map<String, dynamic> json) = _$_ImageDto.fromJson;

  @override
  String? get path => throw _privateConstructorUsedError;
  @override
  String? get extension => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ImageDtoCopyWith<_$_ImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

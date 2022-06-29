// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'url_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UrlDto _$UrlDtoFromJson(Map<String, dynamic> json) {
  return _UrlDto.fromJson(json);
}

/// @nodoc
mixin _$UrlDto {
  String? get type => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlDtoCopyWith<UrlDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlDtoCopyWith<$Res> {
  factory $UrlDtoCopyWith(UrlDto value, $Res Function(UrlDto) then) =
      _$UrlDtoCopyWithImpl<$Res>;
  $Res call({String? type, String? url});
}

/// @nodoc
class _$UrlDtoCopyWithImpl<$Res> implements $UrlDtoCopyWith<$Res> {
  _$UrlDtoCopyWithImpl(this._value, this._then);

  final UrlDto _value;
  // ignore: unused_field
  final $Res Function(UrlDto) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UrlDtoCopyWith<$Res> implements $UrlDtoCopyWith<$Res> {
  factory _$$_UrlDtoCopyWith(_$_UrlDto value, $Res Function(_$_UrlDto) then) =
      __$$_UrlDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? type, String? url});
}

/// @nodoc
class __$$_UrlDtoCopyWithImpl<$Res> extends _$UrlDtoCopyWithImpl<$Res>
    implements _$$_UrlDtoCopyWith<$Res> {
  __$$_UrlDtoCopyWithImpl(_$_UrlDto _value, $Res Function(_$_UrlDto) _then)
      : super(_value, (v) => _then(v as _$_UrlDto));

  @override
  _$_UrlDto get _value => super._value as _$_UrlDto;

  @override
  $Res call({
    Object? type = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_UrlDto(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UrlDto extends _UrlDto {
  const _$_UrlDto({this.type, this.url}) : super._();

  factory _$_UrlDto.fromJson(Map<String, dynamic> json) =>
      _$$_UrlDtoFromJson(json);

  @override
  final String? type;
  @override
  final String? url;

  @override
  String toString() {
    return 'UrlDto(type: $type, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UrlDto &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_UrlDtoCopyWith<_$_UrlDto> get copyWith =>
      __$$_UrlDtoCopyWithImpl<_$_UrlDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UrlDtoToJson(this);
  }
}

abstract class _UrlDto extends UrlDto {
  const factory _UrlDto({final String? type, final String? url}) = _$_UrlDto;
  const _UrlDto._() : super._();

  factory _UrlDto.fromJson(Map<String, dynamic> json) = _$_UrlDto.fromJson;

  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UrlDtoCopyWith<_$_UrlDto> get copyWith =>
      throw _privateConstructorUsedError;
}

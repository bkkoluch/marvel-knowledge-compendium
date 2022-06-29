// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comic_date_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComicDateDto _$ComicDateDtoFromJson(Map<String, dynamic> json) {
  return _ComicDateDto.fromJson(json);
}

/// @nodoc
mixin _$ComicDateDto {
  String? get type => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicDateDtoCopyWith<ComicDateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicDateDtoCopyWith<$Res> {
  factory $ComicDateDtoCopyWith(
          ComicDateDto value, $Res Function(ComicDateDto) then) =
      _$ComicDateDtoCopyWithImpl<$Res>;
  $Res call({String? type, DateTime? date});
}

/// @nodoc
class _$ComicDateDtoCopyWithImpl<$Res> implements $ComicDateDtoCopyWith<$Res> {
  _$ComicDateDtoCopyWithImpl(this._value, this._then);

  final ComicDateDto _value;
  // ignore: unused_field
  final $Res Function(ComicDateDto) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_ComicDateDtoCopyWith<$Res>
    implements $ComicDateDtoCopyWith<$Res> {
  factory _$$_ComicDateDtoCopyWith(
          _$_ComicDateDto value, $Res Function(_$_ComicDateDto) then) =
      __$$_ComicDateDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? type, DateTime? date});
}

/// @nodoc
class __$$_ComicDateDtoCopyWithImpl<$Res>
    extends _$ComicDateDtoCopyWithImpl<$Res>
    implements _$$_ComicDateDtoCopyWith<$Res> {
  __$$_ComicDateDtoCopyWithImpl(
      _$_ComicDateDto _value, $Res Function(_$_ComicDateDto) _then)
      : super(_value, (v) => _then(v as _$_ComicDateDto));

  @override
  _$_ComicDateDto get _value => super._value as _$_ComicDateDto;

  @override
  $Res call({
    Object? type = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_ComicDateDto(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComicDateDto extends _ComicDateDto {
  const _$_ComicDateDto({this.type, this.date}) : super._();

  factory _$_ComicDateDto.fromJson(Map<String, dynamic> json) =>
      _$$_ComicDateDtoFromJson(json);

  @override
  final String? type;
  @override
  final DateTime? date;

  @override
  String toString() {
    return 'ComicDateDto(type: $type, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicDateDto &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$_ComicDateDtoCopyWith<_$_ComicDateDto> get copyWith =>
      __$$_ComicDateDtoCopyWithImpl<_$_ComicDateDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicDateDtoToJson(this);
  }
}

abstract class _ComicDateDto extends ComicDateDto {
  const factory _ComicDateDto({final String? type, final DateTime? date}) =
      _$_ComicDateDto;
  const _ComicDateDto._() : super._();

  factory _ComicDateDto.fromJson(Map<String, dynamic> json) =
      _$_ComicDateDto.fromJson;

  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  DateTime? get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ComicDateDtoCopyWith<_$_ComicDateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

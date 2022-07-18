// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comic_date.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComicDate _$ComicDateFromJson(Map<String, dynamic> json) {
  return _ComicDate.fromJson(json);
}

/// @nodoc
mixin _$ComicDate {
  String? get type => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicDateCopyWith<ComicDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicDateCopyWith<$Res> {
  factory $ComicDateCopyWith(ComicDate value, $Res Function(ComicDate) then) =
      _$ComicDateCopyWithImpl<$Res>;
  $Res call({String? type, DateTime? date});
}

/// @nodoc
class _$ComicDateCopyWithImpl<$Res> implements $ComicDateCopyWith<$Res> {
  _$ComicDateCopyWithImpl(this._value, this._then);

  final ComicDate _value;
  // ignore: unused_field
  final $Res Function(ComicDate) _then;

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
abstract class _$$_ComicDateCopyWith<$Res> implements $ComicDateCopyWith<$Res> {
  factory _$$_ComicDateCopyWith(
          _$_ComicDate value, $Res Function(_$_ComicDate) then) =
      __$$_ComicDateCopyWithImpl<$Res>;
  @override
  $Res call({String? type, DateTime? date});
}

/// @nodoc
class __$$_ComicDateCopyWithImpl<$Res> extends _$ComicDateCopyWithImpl<$Res>
    implements _$$_ComicDateCopyWith<$Res> {
  __$$_ComicDateCopyWithImpl(
      _$_ComicDate _value, $Res Function(_$_ComicDate) _then)
      : super(_value, (v) => _then(v as _$_ComicDate));

  @override
  _$_ComicDate get _value => super._value as _$_ComicDate;

  @override
  $Res call({
    Object? type = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_ComicDate(
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
class _$_ComicDate extends _ComicDate {
  const _$_ComicDate({this.type, this.date}) : super._();

  factory _$_ComicDate.fromJson(Map<String, dynamic> json) =>
      _$$_ComicDateFromJson(json);

  @override
  final String? type;
  @override
  final DateTime? date;

  @override
  String toString() {
    return 'ComicDate(type: $type, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicDate &&
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
  _$$_ComicDateCopyWith<_$_ComicDate> get copyWith =>
      __$$_ComicDateCopyWithImpl<_$_ComicDate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicDateToJson(this);
  }
}

abstract class _ComicDate extends ComicDate {
  const factory _ComicDate({final String? type, final DateTime? date}) =
      _$_ComicDate;
  const _ComicDate._() : super._();

  factory _ComicDate.fromJson(Map<String, dynamic> json) =
      _$_ComicDate.fromJson;

  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  DateTime? get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ComicDateCopyWith<_$_ComicDate> get copyWith =>
      throw _privateConstructorUsedError;
}

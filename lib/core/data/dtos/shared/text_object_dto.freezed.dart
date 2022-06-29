// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'text_object_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TextObjectDto _$TextObjectDtoFromJson(Map<String, dynamic> json) {
  return _TextObjectDto.fromJson(json);
}

/// @nodoc
mixin _$TextObjectDto {
  String? get type => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextObjectDtoCopyWith<TextObjectDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextObjectDtoCopyWith<$Res> {
  factory $TextObjectDtoCopyWith(
          TextObjectDto value, $Res Function(TextObjectDto) then) =
      _$TextObjectDtoCopyWithImpl<$Res>;
  $Res call({String? type, String? language, String? text});
}

/// @nodoc
class _$TextObjectDtoCopyWithImpl<$Res>
    implements $TextObjectDtoCopyWith<$Res> {
  _$TextObjectDtoCopyWithImpl(this._value, this._then);

  final TextObjectDto _value;
  // ignore: unused_field
  final $Res Function(TextObjectDto) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? language = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_TextObjectDtoCopyWith<$Res>
    implements $TextObjectDtoCopyWith<$Res> {
  factory _$$_TextObjectDtoCopyWith(
          _$_TextObjectDto value, $Res Function(_$_TextObjectDto) then) =
      __$$_TextObjectDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? type, String? language, String? text});
}

/// @nodoc
class __$$_TextObjectDtoCopyWithImpl<$Res>
    extends _$TextObjectDtoCopyWithImpl<$Res>
    implements _$$_TextObjectDtoCopyWith<$Res> {
  __$$_TextObjectDtoCopyWithImpl(
      _$_TextObjectDto _value, $Res Function(_$_TextObjectDto) _then)
      : super(_value, (v) => _then(v as _$_TextObjectDto));

  @override
  _$_TextObjectDto get _value => super._value as _$_TextObjectDto;

  @override
  $Res call({
    Object? type = freezed,
    Object? language = freezed,
    Object? text = freezed,
  }) {
    return _then(_$_TextObjectDto(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TextObjectDto extends _TextObjectDto {
  const _$_TextObjectDto({this.type, this.language, this.text}) : super._();

  factory _$_TextObjectDto.fromJson(Map<String, dynamic> json) =>
      _$$_TextObjectDtoFromJson(json);

  @override
  final String? type;
  @override
  final String? language;
  @override
  final String? text;

  @override
  String toString() {
    return 'TextObjectDto(type: $type, language: $language, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextObjectDto &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(language),
      const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$_TextObjectDtoCopyWith<_$_TextObjectDto> get copyWith =>
      __$$_TextObjectDtoCopyWithImpl<_$_TextObjectDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TextObjectDtoToJson(this);
  }
}

abstract class _TextObjectDto extends TextObjectDto {
  const factory _TextObjectDto(
      {final String? type,
      final String? language,
      final String? text}) = _$_TextObjectDto;
  const _TextObjectDto._() : super._();

  factory _TextObjectDto.fromJson(Map<String, dynamic> json) =
      _$_TextObjectDto.fromJson;

  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  String? get language => throw _privateConstructorUsedError;
  @override
  String? get text => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TextObjectDtoCopyWith<_$_TextObjectDto> get copyWith =>
      throw _privateConstructorUsedError;
}

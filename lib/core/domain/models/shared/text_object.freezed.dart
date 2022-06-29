// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'text_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TextObject _$TextObjectFromJson(Map<String, dynamic> json) {
  return _TextObject.fromJson(json);
}

/// @nodoc
mixin _$TextObject {
  String? get type => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextObjectCopyWith<TextObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextObjectCopyWith<$Res> {
  factory $TextObjectCopyWith(
          TextObject value, $Res Function(TextObject) then) =
      _$TextObjectCopyWithImpl<$Res>;
  $Res call({String? type, String? language, String? text});
}

/// @nodoc
class _$TextObjectCopyWithImpl<$Res> implements $TextObjectCopyWith<$Res> {
  _$TextObjectCopyWithImpl(this._value, this._then);

  final TextObject _value;
  // ignore: unused_field
  final $Res Function(TextObject) _then;

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
abstract class _$$_TextObjectCopyWith<$Res>
    implements $TextObjectCopyWith<$Res> {
  factory _$$_TextObjectCopyWith(
          _$_TextObject value, $Res Function(_$_TextObject) then) =
      __$$_TextObjectCopyWithImpl<$Res>;
  @override
  $Res call({String? type, String? language, String? text});
}

/// @nodoc
class __$$_TextObjectCopyWithImpl<$Res> extends _$TextObjectCopyWithImpl<$Res>
    implements _$$_TextObjectCopyWith<$Res> {
  __$$_TextObjectCopyWithImpl(
      _$_TextObject _value, $Res Function(_$_TextObject) _then)
      : super(_value, (v) => _then(v as _$_TextObject));

  @override
  _$_TextObject get _value => super._value as _$_TextObject;

  @override
  $Res call({
    Object? type = freezed,
    Object? language = freezed,
    Object? text = freezed,
  }) {
    return _then(_$_TextObject(
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
class _$_TextObject extends _TextObject {
  const _$_TextObject({this.type, this.language, this.text}) : super._();

  factory _$_TextObject.fromJson(Map<String, dynamic> json) =>
      _$$_TextObjectFromJson(json);

  @override
  final String? type;
  @override
  final String? language;
  @override
  final String? text;

  @override
  String toString() {
    return 'TextObject(type: $type, language: $language, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextObject &&
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
  _$$_TextObjectCopyWith<_$_TextObject> get copyWith =>
      __$$_TextObjectCopyWithImpl<_$_TextObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TextObjectToJson(this);
  }
}

abstract class _TextObject extends TextObject {
  const factory _TextObject(
      {final String? type,
      final String? language,
      final String? text}) = _$_TextObject;
  const _TextObject._() : super._();

  factory _TextObject.fromJson(Map<String, dynamic> json) =
      _$_TextObject.fromJson;

  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  String? get language => throw _privateConstructorUsedError;
  @override
  String? get text => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TextObjectCopyWith<_$_TextObject> get copyWith =>
      throw _privateConstructorUsedError;
}

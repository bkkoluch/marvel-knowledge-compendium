// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'characters_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharactersPageState {
  CharactersPageStateStatus get status => throw _privateConstructorUsedError;
  DataContainer<Character>? get characterDataContainer =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharactersPageStateCopyWith<CharactersPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersPageStateCopyWith<$Res> {
  factory $CharactersPageStateCopyWith(
          CharactersPageState value, $Res Function(CharactersPageState) then) =
      _$CharactersPageStateCopyWithImpl<$Res>;
  $Res call(
      {CharactersPageStateStatus status,
      DataContainer<Character>? characterDataContainer});

  $DataContainerCopyWith<Character, $Res>? get characterDataContainer;
}

/// @nodoc
class _$CharactersPageStateCopyWithImpl<$Res>
    implements $CharactersPageStateCopyWith<$Res> {
  _$CharactersPageStateCopyWithImpl(this._value, this._then);

  final CharactersPageState _value;
  // ignore: unused_field
  final $Res Function(CharactersPageState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? characterDataContainer = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CharactersPageStateStatus,
      characterDataContainer: characterDataContainer == freezed
          ? _value.characterDataContainer
          : characterDataContainer // ignore: cast_nullable_to_non_nullable
              as DataContainer<Character>?,
    ));
  }

  @override
  $DataContainerCopyWith<Character, $Res>? get characterDataContainer {
    if (_value.characterDataContainer == null) {
      return null;
    }

    return $DataContainerCopyWith<Character, $Res>(
        _value.characterDataContainer!, (value) {
      return _then(_value.copyWith(characterDataContainer: value));
    });
  }
}

/// @nodoc
abstract class _$$_CharactersPageStateCopyWith<$Res>
    implements $CharactersPageStateCopyWith<$Res> {
  factory _$$_CharactersPageStateCopyWith(_$_CharactersPageState value,
          $Res Function(_$_CharactersPageState) then) =
      __$$_CharactersPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {CharactersPageStateStatus status,
      DataContainer<Character>? characterDataContainer});

  @override
  $DataContainerCopyWith<Character, $Res>? get characterDataContainer;
}

/// @nodoc
class __$$_CharactersPageStateCopyWithImpl<$Res>
    extends _$CharactersPageStateCopyWithImpl<$Res>
    implements _$$_CharactersPageStateCopyWith<$Res> {
  __$$_CharactersPageStateCopyWithImpl(_$_CharactersPageState _value,
      $Res Function(_$_CharactersPageState) _then)
      : super(_value, (v) => _then(v as _$_CharactersPageState));

  @override
  _$_CharactersPageState get _value => super._value as _$_CharactersPageState;

  @override
  $Res call({
    Object? status = freezed,
    Object? characterDataContainer = freezed,
  }) {
    return _then(_$_CharactersPageState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CharactersPageStateStatus,
      characterDataContainer: characterDataContainer == freezed
          ? _value.characterDataContainer
          : characterDataContainer // ignore: cast_nullable_to_non_nullable
              as DataContainer<Character>?,
    ));
  }
}

/// @nodoc

class _$_CharactersPageState extends _CharactersPageState {
  const _$_CharactersPageState(
      {required this.status, this.characterDataContainer})
      : super._();

  @override
  final CharactersPageStateStatus status;
  @override
  final DataContainer<Character>? characterDataContainer;

  @override
  String toString() {
    return 'CharactersPageState(status: $status, characterDataContainer: $characterDataContainer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharactersPageState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.characterDataContainer, characterDataContainer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(characterDataContainer));

  @JsonKey(ignore: true)
  @override
  _$$_CharactersPageStateCopyWith<_$_CharactersPageState> get copyWith =>
      __$$_CharactersPageStateCopyWithImpl<_$_CharactersPageState>(
          this, _$identity);
}

abstract class _CharactersPageState extends CharactersPageState {
  const factory _CharactersPageState(
          {required final CharactersPageStateStatus status,
          final DataContainer<Character>? characterDataContainer}) =
      _$_CharactersPageState;
  const _CharactersPageState._() : super._();

  @override
  CharactersPageStateStatus get status => throw _privateConstructorUsedError;
  @override
  DataContainer<Character>? get characterDataContainer =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CharactersPageStateCopyWith<_$_CharactersPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

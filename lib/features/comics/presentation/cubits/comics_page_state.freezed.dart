// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comics_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ComicsPageState {
  ComicsPageStateStatus get status => throw _privateConstructorUsedError;
  DataContainer<Comic>? get comicsDataContainer =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComicsPageStateCopyWith<ComicsPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicsPageStateCopyWith<$Res> {
  factory $ComicsPageStateCopyWith(
          ComicsPageState value, $Res Function(ComicsPageState) then) =
      _$ComicsPageStateCopyWithImpl<$Res>;
  $Res call(
      {ComicsPageStateStatus status,
      DataContainer<Comic>? comicsDataContainer});

  $DataContainerCopyWith<Comic, $Res>? get comicsDataContainer;
}

/// @nodoc
class _$ComicsPageStateCopyWithImpl<$Res>
    implements $ComicsPageStateCopyWith<$Res> {
  _$ComicsPageStateCopyWithImpl(this._value, this._then);

  final ComicsPageState _value;
  // ignore: unused_field
  final $Res Function(ComicsPageState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? comicsDataContainer = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ComicsPageStateStatus,
      comicsDataContainer: comicsDataContainer == freezed
          ? _value.comicsDataContainer
          : comicsDataContainer // ignore: cast_nullable_to_non_nullable
              as DataContainer<Comic>?,
    ));
  }

  @override
  $DataContainerCopyWith<Comic, $Res>? get comicsDataContainer {
    if (_value.comicsDataContainer == null) {
      return null;
    }

    return $DataContainerCopyWith<Comic, $Res>(_value.comicsDataContainer!,
        (value) {
      return _then(_value.copyWith(comicsDataContainer: value));
    });
  }
}

/// @nodoc
abstract class _$$_ComicsPageStateCopyWith<$Res>
    implements $ComicsPageStateCopyWith<$Res> {
  factory _$$_ComicsPageStateCopyWith(
          _$_ComicsPageState value, $Res Function(_$_ComicsPageState) then) =
      __$$_ComicsPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ComicsPageStateStatus status,
      DataContainer<Comic>? comicsDataContainer});

  @override
  $DataContainerCopyWith<Comic, $Res>? get comicsDataContainer;
}

/// @nodoc
class __$$_ComicsPageStateCopyWithImpl<$Res>
    extends _$ComicsPageStateCopyWithImpl<$Res>
    implements _$$_ComicsPageStateCopyWith<$Res> {
  __$$_ComicsPageStateCopyWithImpl(
      _$_ComicsPageState _value, $Res Function(_$_ComicsPageState) _then)
      : super(_value, (v) => _then(v as _$_ComicsPageState));

  @override
  _$_ComicsPageState get _value => super._value as _$_ComicsPageState;

  @override
  $Res call({
    Object? status = freezed,
    Object? comicsDataContainer = freezed,
  }) {
    return _then(_$_ComicsPageState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ComicsPageStateStatus,
      comicsDataContainer: comicsDataContainer == freezed
          ? _value.comicsDataContainer
          : comicsDataContainer // ignore: cast_nullable_to_non_nullable
              as DataContainer<Comic>?,
    ));
  }
}

/// @nodoc

class _$_ComicsPageState extends _ComicsPageState {
  const _$_ComicsPageState({required this.status, this.comicsDataContainer})
      : super._();

  @override
  final ComicsPageStateStatus status;
  @override
  final DataContainer<Comic>? comicsDataContainer;

  @override
  String toString() {
    return 'ComicsPageState(status: $status, comicsDataContainer: $comicsDataContainer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicsPageState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.comicsDataContainer, comicsDataContainer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(comicsDataContainer));

  @JsonKey(ignore: true)
  @override
  _$$_ComicsPageStateCopyWith<_$_ComicsPageState> get copyWith =>
      __$$_ComicsPageStateCopyWithImpl<_$_ComicsPageState>(this, _$identity);
}

abstract class _ComicsPageState extends ComicsPageState {
  const factory _ComicsPageState(
      {required final ComicsPageStateStatus status,
      final DataContainer<Comic>? comicsDataContainer}) = _$_ComicsPageState;
  const _ComicsPageState._() : super._();

  @override
  ComicsPageStateStatus get status => throw _privateConstructorUsedError;
  @override
  DataContainer<Comic>? get comicsDataContainer =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ComicsPageStateCopyWith<_$_ComicsPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomePageState {
  HomePageStateStatus get status => throw _privateConstructorUsedError;
  List<String> get homePageImages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res>;
  $Res call({HomePageStateStatus status, List<String> homePageImages});
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  final HomePageState _value;
  // ignore: unused_field
  final $Res Function(HomePageState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? homePageImages = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomePageStateStatus,
      homePageImages: homePageImages == freezed
          ? _value.homePageImages
          : homePageImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_HomePageStateCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$_HomePageStateCopyWith(
          _$_HomePageState value, $Res Function(_$_HomePageState) then) =
      __$$_HomePageStateCopyWithImpl<$Res>;
  @override
  $Res call({HomePageStateStatus status, List<String> homePageImages});
}

/// @nodoc
class __$$_HomePageStateCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res>
    implements _$$_HomePageStateCopyWith<$Res> {
  __$$_HomePageStateCopyWithImpl(
      _$_HomePageState _value, $Res Function(_$_HomePageState) _then)
      : super(_value, (v) => _then(v as _$_HomePageState));

  @override
  _$_HomePageState get _value => super._value as _$_HomePageState;

  @override
  $Res call({
    Object? status = freezed,
    Object? homePageImages = freezed,
  }) {
    return _then(_$_HomePageState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomePageStateStatus,
      homePageImages: homePageImages == freezed
          ? _value._homePageImages
          : homePageImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_HomePageState extends _HomePageState {
  const _$_HomePageState(
      {required this.status, required final List<String> homePageImages})
      : _homePageImages = homePageImages,
        super._();

  @override
  final HomePageStateStatus status;
  final List<String> _homePageImages;
  @override
  List<String> get homePageImages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_homePageImages);
  }

  @override
  String toString() {
    return 'HomePageState(status: $status, homePageImages: $homePageImages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomePageState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other._homePageImages, _homePageImages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_homePageImages));

  @JsonKey(ignore: true)
  @override
  _$$_HomePageStateCopyWith<_$_HomePageState> get copyWith =>
      __$$_HomePageStateCopyWithImpl<_$_HomePageState>(this, _$identity);
}

abstract class _HomePageState extends HomePageState {
  const factory _HomePageState(
      {required final HomePageStateStatus status,
      required final List<String> homePageImages}) = _$_HomePageState;
  const _HomePageState._() : super._();

  @override
  HomePageStateStatus get status => throw _privateConstructorUsedError;
  @override
  List<String> get homePageImages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HomePageStateCopyWith<_$_HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

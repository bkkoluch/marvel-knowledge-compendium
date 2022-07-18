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
  DataWrapper<DataContainer<Character>>? get unfilteredCharacterDataWrapper =>
      throw _privateConstructorUsedError;
  DataWrapper<DataContainer<Comic>>? get unfilteredComicDataWrapper =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res>;
  $Res call(
      {HomePageStateStatus status,
      List<String> homePageImages,
      DataWrapper<DataContainer<Character>>? unfilteredCharacterDataWrapper,
      DataWrapper<DataContainer<Comic>>? unfilteredComicDataWrapper});

  $DataWrapperCopyWith<DataContainer<Character>, $Res>?
      get unfilteredCharacterDataWrapper;
  $DataWrapperCopyWith<DataContainer<Comic>, $Res>?
      get unfilteredComicDataWrapper;
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
    Object? unfilteredCharacterDataWrapper = freezed,
    Object? unfilteredComicDataWrapper = freezed,
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
      unfilteredCharacterDataWrapper: unfilteredCharacterDataWrapper == freezed
          ? _value.unfilteredCharacterDataWrapper
          : unfilteredCharacterDataWrapper // ignore: cast_nullable_to_non_nullable
              as DataWrapper<DataContainer<Character>>?,
      unfilteredComicDataWrapper: unfilteredComicDataWrapper == freezed
          ? _value.unfilteredComicDataWrapper
          : unfilteredComicDataWrapper // ignore: cast_nullable_to_non_nullable
              as DataWrapper<DataContainer<Comic>>?,
    ));
  }

  @override
  $DataWrapperCopyWith<DataContainer<Character>, $Res>?
      get unfilteredCharacterDataWrapper {
    if (_value.unfilteredCharacterDataWrapper == null) {
      return null;
    }

    return $DataWrapperCopyWith<DataContainer<Character>, $Res>(
        _value.unfilteredCharacterDataWrapper!, (value) {
      return _then(_value.copyWith(unfilteredCharacterDataWrapper: value));
    });
  }

  @override
  $DataWrapperCopyWith<DataContainer<Comic>, $Res>?
      get unfilteredComicDataWrapper {
    if (_value.unfilteredComicDataWrapper == null) {
      return null;
    }

    return $DataWrapperCopyWith<DataContainer<Comic>, $Res>(
        _value.unfilteredComicDataWrapper!, (value) {
      return _then(_value.copyWith(unfilteredComicDataWrapper: value));
    });
  }
}

/// @nodoc
abstract class _$$_HomePageStateCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$_HomePageStateCopyWith(
          _$_HomePageState value, $Res Function(_$_HomePageState) then) =
      __$$_HomePageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {HomePageStateStatus status,
      List<String> homePageImages,
      DataWrapper<DataContainer<Character>>? unfilteredCharacterDataWrapper,
      DataWrapper<DataContainer<Comic>>? unfilteredComicDataWrapper});

  @override
  $DataWrapperCopyWith<DataContainer<Character>, $Res>?
      get unfilteredCharacterDataWrapper;
  @override
  $DataWrapperCopyWith<DataContainer<Comic>, $Res>?
      get unfilteredComicDataWrapper;
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
    Object? unfilteredCharacterDataWrapper = freezed,
    Object? unfilteredComicDataWrapper = freezed,
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
      unfilteredCharacterDataWrapper: unfilteredCharacterDataWrapper == freezed
          ? _value.unfilteredCharacterDataWrapper
          : unfilteredCharacterDataWrapper // ignore: cast_nullable_to_non_nullable
              as DataWrapper<DataContainer<Character>>?,
      unfilteredComicDataWrapper: unfilteredComicDataWrapper == freezed
          ? _value.unfilteredComicDataWrapper
          : unfilteredComicDataWrapper // ignore: cast_nullable_to_non_nullable
              as DataWrapper<DataContainer<Comic>>?,
    ));
  }
}

/// @nodoc

class _$_HomePageState extends _HomePageState {
  const _$_HomePageState(
      {required this.status,
      required final List<String> homePageImages,
      this.unfilteredCharacterDataWrapper,
      this.unfilteredComicDataWrapper})
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
  final DataWrapper<DataContainer<Character>>? unfilteredCharacterDataWrapper;
  @override
  final DataWrapper<DataContainer<Comic>>? unfilteredComicDataWrapper;

  @override
  String toString() {
    return 'HomePageState(status: $status, homePageImages: $homePageImages, unfilteredCharacterDataWrapper: $unfilteredCharacterDataWrapper, unfilteredComicDataWrapper: $unfilteredComicDataWrapper)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomePageState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other._homePageImages, _homePageImages) &&
            const DeepCollectionEquality().equals(
                other.unfilteredCharacterDataWrapper,
                unfilteredCharacterDataWrapper) &&
            const DeepCollectionEquality().equals(
                other.unfilteredComicDataWrapper, unfilteredComicDataWrapper));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_homePageImages),
      const DeepCollectionEquality().hash(unfilteredCharacterDataWrapper),
      const DeepCollectionEquality().hash(unfilteredComicDataWrapper));

  @JsonKey(ignore: true)
  @override
  _$$_HomePageStateCopyWith<_$_HomePageState> get copyWith =>
      __$$_HomePageStateCopyWithImpl<_$_HomePageState>(this, _$identity);
}

abstract class _HomePageState extends HomePageState {
  const factory _HomePageState(
      {required final HomePageStateStatus status,
      required final List<String> homePageImages,
      final DataWrapper<DataContainer<Character>>?
          unfilteredCharacterDataWrapper,
      final DataWrapper<DataContainer<Comic>>?
          unfilteredComicDataWrapper}) = _$_HomePageState;
  const _HomePageState._() : super._();

  @override
  HomePageStateStatus get status => throw _privateConstructorUsedError;
  @override
  List<String> get homePageImages => throw _privateConstructorUsedError;
  @override
  DataWrapper<DataContainer<Character>>? get unfilteredCharacterDataWrapper =>
      throw _privateConstructorUsedError;
  @override
  DataWrapper<DataContainer<Comic>>? get unfilteredComicDataWrapper =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HomePageStateCopyWith<_$_HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

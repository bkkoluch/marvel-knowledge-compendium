// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'generic_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GenericList<T> {
  int? get available => throw _privateConstructorUsedError;
  int? get returned => throw _privateConstructorUsedError;
  String? get collectionURI => throw _privateConstructorUsedError;
  List<T>? get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GenericListCopyWith<T, GenericList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericListCopyWith<T, $Res> {
  factory $GenericListCopyWith(
          GenericList<T> value, $Res Function(GenericList<T>) then) =
      _$GenericListCopyWithImpl<T, $Res>;
  $Res call(
      {int? available, int? returned, String? collectionURI, List<T>? items});
}

/// @nodoc
class _$GenericListCopyWithImpl<T, $Res>
    implements $GenericListCopyWith<T, $Res> {
  _$GenericListCopyWithImpl(this._value, this._then);

  final GenericList<T> _value;
  // ignore: unused_field
  final $Res Function(GenericList<T>) _then;

  @override
  $Res call({
    Object? available = freezed,
    Object? returned = freezed,
    Object? collectionURI = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      available: available == freezed
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int?,
      returned: returned == freezed
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int?,
      collectionURI: collectionURI == freezed
          ? _value.collectionURI
          : collectionURI // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>?,
    ));
  }
}

/// @nodoc
abstract class _$$_GenericListCopyWith<T, $Res>
    implements $GenericListCopyWith<T, $Res> {
  factory _$$_GenericListCopyWith(
          _$_GenericList<T> value, $Res Function(_$_GenericList<T>) then) =
      __$$_GenericListCopyWithImpl<T, $Res>;
  @override
  $Res call(
      {int? available, int? returned, String? collectionURI, List<T>? items});
}

/// @nodoc
class __$$_GenericListCopyWithImpl<T, $Res>
    extends _$GenericListCopyWithImpl<T, $Res>
    implements _$$_GenericListCopyWith<T, $Res> {
  __$$_GenericListCopyWithImpl(
      _$_GenericList<T> _value, $Res Function(_$_GenericList<T>) _then)
      : super(_value, (v) => _then(v as _$_GenericList<T>));

  @override
  _$_GenericList<T> get _value => super._value as _$_GenericList<T>;

  @override
  $Res call({
    Object? available = freezed,
    Object? returned = freezed,
    Object? collectionURI = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_GenericList<T>(
      available: available == freezed
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int?,
      returned: returned == freezed
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int?,
      collectionURI: collectionURI == freezed
          ? _value.collectionURI
          : collectionURI // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>?,
    ));
  }
}

/// @nodoc

class _$_GenericList<T> extends _GenericList<T> {
  const _$_GenericList(
      {this.available, this.returned, this.collectionURI, final List<T>? items})
      : _items = items,
        super._();

  @override
  final int? available;
  @override
  final int? returned;
  @override
  final String? collectionURI;
  final List<T>? _items;
  @override
  List<T>? get items {
    final value = _items;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GenericList<$T>(available: $available, returned: $returned, collectionURI: $collectionURI, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenericList<T> &&
            const DeepCollectionEquality().equals(other.available, available) &&
            const DeepCollectionEquality().equals(other.returned, returned) &&
            const DeepCollectionEquality()
                .equals(other.collectionURI, collectionURI) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(available),
      const DeepCollectionEquality().hash(returned),
      const DeepCollectionEquality().hash(collectionURI),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_GenericListCopyWith<T, _$_GenericList<T>> get copyWith =>
      __$$_GenericListCopyWithImpl<T, _$_GenericList<T>>(this, _$identity);
}

abstract class _GenericList<T> extends GenericList<T> {
  const factory _GenericList(
      {final int? available,
      final int? returned,
      final String? collectionURI,
      final List<T>? items}) = _$_GenericList<T>;
  const _GenericList._() : super._();

  @override
  int? get available => throw _privateConstructorUsedError;
  @override
  int? get returned => throw _privateConstructorUsedError;
  @override
  String? get collectionURI => throw _privateConstructorUsedError;
  @override
  List<T>? get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GenericListCopyWith<T, _$_GenericList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

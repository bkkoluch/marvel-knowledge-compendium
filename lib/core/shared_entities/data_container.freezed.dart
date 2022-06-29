// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_container.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataContainer<T> {
  int? get offset => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  List<T>? get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataContainerCopyWith<T, DataContainer<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataContainerCopyWith<T, $Res> {
  factory $DataContainerCopyWith(
          DataContainer<T> value, $Res Function(DataContainer<T>) then) =
      _$DataContainerCopyWithImpl<T, $Res>;
  $Res call(
      {int? offset, int? limit, int? total, int? count, List<T>? results});
}

/// @nodoc
class _$DataContainerCopyWithImpl<T, $Res>
    implements $DataContainerCopyWith<T, $Res> {
  _$DataContainerCopyWithImpl(this._value, this._then);

  final DataContainer<T> _value;
  // ignore: unused_field
  final $Res Function(DataContainer<T>) _then;

  @override
  $Res call({
    Object? offset = freezed,
    Object? limit = freezed,
    Object? total = freezed,
    Object? count = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<T>?,
    ));
  }
}

/// @nodoc
abstract class _$$_DataContainerCopyWith<T, $Res>
    implements $DataContainerCopyWith<T, $Res> {
  factory _$$_DataContainerCopyWith(
          _$_DataContainer<T> value, $Res Function(_$_DataContainer<T>) then) =
      __$$_DataContainerCopyWithImpl<T, $Res>;
  @override
  $Res call(
      {int? offset, int? limit, int? total, int? count, List<T>? results});
}

/// @nodoc
class __$$_DataContainerCopyWithImpl<T, $Res>
    extends _$DataContainerCopyWithImpl<T, $Res>
    implements _$$_DataContainerCopyWith<T, $Res> {
  __$$_DataContainerCopyWithImpl(
      _$_DataContainer<T> _value, $Res Function(_$_DataContainer<T>) _then)
      : super(_value, (v) => _then(v as _$_DataContainer<T>));

  @override
  _$_DataContainer<T> get _value => super._value as _$_DataContainer<T>;

  @override
  $Res call({
    Object? offset = freezed,
    Object? limit = freezed,
    Object? total = freezed,
    Object? count = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_DataContainer<T>(
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<T>?,
    ));
  }
}

/// @nodoc

class _$_DataContainer<T> extends _DataContainer<T> {
  const _$_DataContainer(
      {this.offset, this.limit, this.total, this.count, final List<T>? results})
      : _results = results,
        super._();

  @override
  final int? offset;
  @override
  final int? limit;
  @override
  final int? total;
  @override
  final int? count;
  final List<T>? _results;
  @override
  List<T>? get results {
    final value = _results;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataContainer<$T>(offset: $offset, limit: $limit, total: $total, count: $count, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataContainer<T> &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(offset),
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_DataContainerCopyWith<T, _$_DataContainer<T>> get copyWith =>
      __$$_DataContainerCopyWithImpl<T, _$_DataContainer<T>>(this, _$identity);
}

abstract class _DataContainer<T> extends DataContainer<T> {
  const factory _DataContainer(
      {final int? offset,
      final int? limit,
      final int? total,
      final int? count,
      final List<T>? results}) = _$_DataContainer<T>;
  const _DataContainer._() : super._();

  @override
  int? get offset => throw _privateConstructorUsedError;
  @override
  int? get limit => throw _privateConstructorUsedError;
  @override
  int? get total => throw _privateConstructorUsedError;
  @override
  int? get count => throw _privateConstructorUsedError;
  @override
  List<T>? get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DataContainerCopyWith<T, _$_DataContainer<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Character {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get modified => throw _privateConstructorUsedError;
  String? get resourceURI => throw _privateConstructorUsedError;
  List<Url>? get urls => throw _privateConstructorUsedError;
  Image? get image => throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get comics => throw _privateConstructorUsedError;
  GenericList<StorySummary>? get stories => throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get events => throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get series => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterCopyWith<Character> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterCopyWith<$Res> {
  factory $CharacterCopyWith(Character value, $Res Function(Character) then) =
      _$CharacterCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? description,
      DateTime? modified,
      String? resourceURI,
      List<Url>? urls,
      Image? image,
      GenericList<CommonSummary>? comics,
      GenericList<StorySummary>? stories,
      GenericList<CommonSummary>? events,
      GenericList<CommonSummary>? series});

  $ImageCopyWith<$Res>? get image;
  $GenericListCopyWith<CommonSummary, $Res>? get comics;
  $GenericListCopyWith<StorySummary, $Res>? get stories;
  $GenericListCopyWith<CommonSummary, $Res>? get events;
  $GenericListCopyWith<CommonSummary, $Res>? get series;
}

/// @nodoc
class _$CharacterCopyWithImpl<$Res> implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._value, this._then);

  final Character _value;
  // ignore: unused_field
  final $Res Function(Character) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? modified = freezed,
    Object? resourceURI = freezed,
    Object? urls = freezed,
    Object? image = freezed,
    Object? comics = freezed,
    Object? stories = freezed,
    Object? events = freezed,
    Object? series = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: modified == freezed
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      resourceURI: resourceURI == freezed
          ? _value.resourceURI
          : resourceURI // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: urls == freezed
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<Url>?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image?,
      comics: comics == freezed
          ? _value.comics
          : comics // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
      stories: stories == freezed
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as GenericList<StorySummary>?,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
    ));
  }

  @override
  $ImageCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ImageCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value));
    });
  }

  @override
  $GenericListCopyWith<CommonSummary, $Res>? get comics {
    if (_value.comics == null) {
      return null;
    }

    return $GenericListCopyWith<CommonSummary, $Res>(_value.comics!, (value) {
      return _then(_value.copyWith(comics: value));
    });
  }

  @override
  $GenericListCopyWith<StorySummary, $Res>? get stories {
    if (_value.stories == null) {
      return null;
    }

    return $GenericListCopyWith<StorySummary, $Res>(_value.stories!, (value) {
      return _then(_value.copyWith(stories: value));
    });
  }

  @override
  $GenericListCopyWith<CommonSummary, $Res>? get events {
    if (_value.events == null) {
      return null;
    }

    return $GenericListCopyWith<CommonSummary, $Res>(_value.events!, (value) {
      return _then(_value.copyWith(events: value));
    });
  }

  @override
  $GenericListCopyWith<CommonSummary, $Res>? get series {
    if (_value.series == null) {
      return null;
    }

    return $GenericListCopyWith<CommonSummary, $Res>(_value.series!, (value) {
      return _then(_value.copyWith(series: value));
    });
  }
}

/// @nodoc
abstract class _$$_CharacterCopyWith<$Res> implements $CharacterCopyWith<$Res> {
  factory _$$_CharacterCopyWith(
          _$_Character value, $Res Function(_$_Character) then) =
      __$$_CharacterCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? description,
      DateTime? modified,
      String? resourceURI,
      List<Url>? urls,
      Image? image,
      GenericList<CommonSummary>? comics,
      GenericList<StorySummary>? stories,
      GenericList<CommonSummary>? events,
      GenericList<CommonSummary>? series});

  @override
  $ImageCopyWith<$Res>? get image;
  @override
  $GenericListCopyWith<CommonSummary, $Res>? get comics;
  @override
  $GenericListCopyWith<StorySummary, $Res>? get stories;
  @override
  $GenericListCopyWith<CommonSummary, $Res>? get events;
  @override
  $GenericListCopyWith<CommonSummary, $Res>? get series;
}

/// @nodoc
class __$$_CharacterCopyWithImpl<$Res> extends _$CharacterCopyWithImpl<$Res>
    implements _$$_CharacterCopyWith<$Res> {
  __$$_CharacterCopyWithImpl(
      _$_Character _value, $Res Function(_$_Character) _then)
      : super(_value, (v) => _then(v as _$_Character));

  @override
  _$_Character get _value => super._value as _$_Character;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? modified = freezed,
    Object? resourceURI = freezed,
    Object? urls = freezed,
    Object? image = freezed,
    Object? comics = freezed,
    Object? stories = freezed,
    Object? events = freezed,
    Object? series = freezed,
  }) {
    return _then(_$_Character(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: modified == freezed
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      resourceURI: resourceURI == freezed
          ? _value.resourceURI
          : resourceURI // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: urls == freezed
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<Url>?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image?,
      comics: comics == freezed
          ? _value.comics
          : comics // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
      stories: stories == freezed
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as GenericList<StorySummary>?,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
    ));
  }
}

/// @nodoc

class _$_Character extends _Character {
  const _$_Character(
      {this.id,
      this.name,
      this.description,
      this.modified,
      this.resourceURI,
      final List<Url>? urls,
      this.image,
      this.comics,
      this.stories,
      this.events,
      this.series})
      : _urls = urls,
        super._();

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final DateTime? modified;
  @override
  final String? resourceURI;
  final List<Url>? _urls;
  @override
  List<Url>? get urls {
    final value = _urls;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Image? image;
  @override
  final GenericList<CommonSummary>? comics;
  @override
  final GenericList<StorySummary>? stories;
  @override
  final GenericList<CommonSummary>? events;
  @override
  final GenericList<CommonSummary>? series;

  @override
  String toString() {
    return 'Character(id: $id, name: $name, description: $description, modified: $modified, resourceURI: $resourceURI, urls: $urls, image: $image, comics: $comics, stories: $stories, events: $events, series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Character &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.modified, modified) &&
            const DeepCollectionEquality()
                .equals(other.resourceURI, resourceURI) &&
            const DeepCollectionEquality().equals(other._urls, _urls) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.comics, comics) &&
            const DeepCollectionEquality().equals(other.stories, stories) &&
            const DeepCollectionEquality().equals(other.events, events) &&
            const DeepCollectionEquality().equals(other.series, series));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(modified),
      const DeepCollectionEquality().hash(resourceURI),
      const DeepCollectionEquality().hash(_urls),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(comics),
      const DeepCollectionEquality().hash(stories),
      const DeepCollectionEquality().hash(events),
      const DeepCollectionEquality().hash(series));

  @JsonKey(ignore: true)
  @override
  _$$_CharacterCopyWith<_$_Character> get copyWith =>
      __$$_CharacterCopyWithImpl<_$_Character>(this, _$identity);
}

abstract class _Character extends Character {
  const factory _Character(
      {final int? id,
      final String? name,
      final String? description,
      final DateTime? modified,
      final String? resourceURI,
      final List<Url>? urls,
      final Image? image,
      final GenericList<CommonSummary>? comics,
      final GenericList<StorySummary>? stories,
      final GenericList<CommonSummary>? events,
      final GenericList<CommonSummary>? series}) = _$_Character;
  const _Character._() : super._();

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  DateTime? get modified => throw _privateConstructorUsedError;
  @override
  String? get resourceURI => throw _privateConstructorUsedError;
  @override
  List<Url>? get urls => throw _privateConstructorUsedError;
  @override
  Image? get image => throw _privateConstructorUsedError;
  @override
  GenericList<CommonSummary>? get comics => throw _privateConstructorUsedError;
  @override
  GenericList<StorySummary>? get stories => throw _privateConstructorUsedError;
  @override
  GenericList<CommonSummary>? get events => throw _privateConstructorUsedError;
  @override
  GenericList<CommonSummary>? get series => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterCopyWith<_$_Character> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterDto _$CharacterDtoFromJson(Map<String, dynamic> json) {
  return _CharacterDto.fromJson(json);
}

/// @nodoc
mixin _$CharacterDto {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get modified => throw _privateConstructorUsedError;
  String? get resourceURI => throw _privateConstructorUsedError;
  List<UrlDto>? get urls => throw _privateConstructorUsedError;
  ImageDto? get thumbnail => throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get comics => throw _privateConstructorUsedError;
  GenericList<StorySummaryDto>? get stories =>
      throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get events => throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get series => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterDtoCopyWith<CharacterDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDtoCopyWith<$Res> {
  factory $CharacterDtoCopyWith(
          CharacterDto value, $Res Function(CharacterDto) then) =
      _$CharacterDtoCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? description,
      DateTime? modified,
      String? resourceURI,
      List<UrlDto>? urls,
      ImageDto? thumbnail,
      GenericList<CommonSummary>? comics,
      GenericList<StorySummaryDto>? stories,
      GenericList<CommonSummary>? events,
      GenericList<CommonSummary>? series});

  $ImageDtoCopyWith<$Res>? get thumbnail;
  $GenericListCopyWith<CommonSummary, $Res>? get comics;
  $GenericListCopyWith<StorySummaryDto, $Res>? get stories;
  $GenericListCopyWith<CommonSummary, $Res>? get events;
  $GenericListCopyWith<CommonSummary, $Res>? get series;
}

/// @nodoc
class _$CharacterDtoCopyWithImpl<$Res> implements $CharacterDtoCopyWith<$Res> {
  _$CharacterDtoCopyWithImpl(this._value, this._then);

  final CharacterDto _value;
  // ignore: unused_field
  final $Res Function(CharacterDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? modified = freezed,
    Object? resourceURI = freezed,
    Object? urls = freezed,
    Object? thumbnail = freezed,
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
              as List<UrlDto>?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as ImageDto?,
      comics: comics == freezed
          ? _value.comics
          : comics // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
      stories: stories == freezed
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as GenericList<StorySummaryDto>?,
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
  $ImageDtoCopyWith<$Res>? get thumbnail {
    if (_value.thumbnail == null) {
      return null;
    }

    return $ImageDtoCopyWith<$Res>(_value.thumbnail!, (value) {
      return _then(_value.copyWith(thumbnail: value));
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
  $GenericListCopyWith<StorySummaryDto, $Res>? get stories {
    if (_value.stories == null) {
      return null;
    }

    return $GenericListCopyWith<StorySummaryDto, $Res>(_value.stories!,
        (value) {
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
abstract class _$$_CharacterDtoCopyWith<$Res>
    implements $CharacterDtoCopyWith<$Res> {
  factory _$$_CharacterDtoCopyWith(
          _$_CharacterDto value, $Res Function(_$_CharacterDto) then) =
      __$$_CharacterDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? description,
      DateTime? modified,
      String? resourceURI,
      List<UrlDto>? urls,
      ImageDto? thumbnail,
      GenericList<CommonSummary>? comics,
      GenericList<StorySummaryDto>? stories,
      GenericList<CommonSummary>? events,
      GenericList<CommonSummary>? series});

  @override
  $ImageDtoCopyWith<$Res>? get thumbnail;
  @override
  $GenericListCopyWith<CommonSummary, $Res>? get comics;
  @override
  $GenericListCopyWith<StorySummaryDto, $Res>? get stories;
  @override
  $GenericListCopyWith<CommonSummary, $Res>? get events;
  @override
  $GenericListCopyWith<CommonSummary, $Res>? get series;
}

/// @nodoc
class __$$_CharacterDtoCopyWithImpl<$Res>
    extends _$CharacterDtoCopyWithImpl<$Res>
    implements _$$_CharacterDtoCopyWith<$Res> {
  __$$_CharacterDtoCopyWithImpl(
      _$_CharacterDto _value, $Res Function(_$_CharacterDto) _then)
      : super(_value, (v) => _then(v as _$_CharacterDto));

  @override
  _$_CharacterDto get _value => super._value as _$_CharacterDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? modified = freezed,
    Object? resourceURI = freezed,
    Object? urls = freezed,
    Object? thumbnail = freezed,
    Object? comics = freezed,
    Object? stories = freezed,
    Object? events = freezed,
    Object? series = freezed,
  }) {
    return _then(_$_CharacterDto(
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
              as List<UrlDto>?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as ImageDto?,
      comics: comics == freezed
          ? _value.comics
          : comics // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
      stories: stories == freezed
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as GenericList<StorySummaryDto>?,
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
@JsonSerializable()
class _$_CharacterDto extends _CharacterDto {
  const _$_CharacterDto(
      {this.id,
      this.name,
      this.description,
      this.modified,
      this.resourceURI,
      final List<UrlDto>? urls,
      this.thumbnail,
      this.comics,
      this.stories,
      this.events,
      this.series})
      : _urls = urls,
        super._();

  factory _$_CharacterDto.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterDtoFromJson(json);

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
  final List<UrlDto>? _urls;
  @override
  List<UrlDto>? get urls {
    final value = _urls;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ImageDto? thumbnail;
  @override
  final GenericList<CommonSummary>? comics;
  @override
  final GenericList<StorySummaryDto>? stories;
  @override
  final GenericList<CommonSummary>? events;
  @override
  final GenericList<CommonSummary>? series;

  @override
  String toString() {
    return 'CharacterDto(id: $id, name: $name, description: $description, modified: $modified, resourceURI: $resourceURI, urls: $urls, thumbnail: $thumbnail, comics: $comics, stories: $stories, events: $events, series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.modified, modified) &&
            const DeepCollectionEquality()
                .equals(other.resourceURI, resourceURI) &&
            const DeepCollectionEquality().equals(other._urls, _urls) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality().equals(other.comics, comics) &&
            const DeepCollectionEquality().equals(other.stories, stories) &&
            const DeepCollectionEquality().equals(other.events, events) &&
            const DeepCollectionEquality().equals(other.series, series));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(modified),
      const DeepCollectionEquality().hash(resourceURI),
      const DeepCollectionEquality().hash(_urls),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(comics),
      const DeepCollectionEquality().hash(stories),
      const DeepCollectionEquality().hash(events),
      const DeepCollectionEquality().hash(series));

  @JsonKey(ignore: true)
  @override
  _$$_CharacterDtoCopyWith<_$_CharacterDto> get copyWith =>
      __$$_CharacterDtoCopyWithImpl<_$_CharacterDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterDtoToJson(this);
  }
}

abstract class _CharacterDto extends CharacterDto {
  const factory _CharacterDto(
      {final int? id,
      final String? name,
      final String? description,
      final DateTime? modified,
      final String? resourceURI,
      final List<UrlDto>? urls,
      final ImageDto? thumbnail,
      final GenericList<CommonSummary>? comics,
      final GenericList<StorySummaryDto>? stories,
      final GenericList<CommonSummary>? events,
      final GenericList<CommonSummary>? series}) = _$_CharacterDto;
  const _CharacterDto._() : super._();

  factory _CharacterDto.fromJson(Map<String, dynamic> json) =
      _$_CharacterDto.fromJson;

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
  List<UrlDto>? get urls => throw _privateConstructorUsedError;
  @override
  ImageDto? get thumbnail => throw _privateConstructorUsedError;
  @override
  GenericList<CommonSummary>? get comics => throw _privateConstructorUsedError;
  @override
  GenericList<StorySummaryDto>? get stories =>
      throw _privateConstructorUsedError;
  @override
  GenericList<CommonSummary>? get events => throw _privateConstructorUsedError;
  @override
  GenericList<CommonSummary>? get series => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterDtoCopyWith<_$_CharacterDto> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'series_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SeriesDto _$SeriesDtoFromJson(Map<String, dynamic> json) {
  return _SeriesDto.fromJson(json);
}

/// @nodoc
mixin _$SeriesDto {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get resourceURI => throw _privateConstructorUsedError;
  List<UrlDto>? get urls => throw _privateConstructorUsedError;
  int? get startYear => throw _privateConstructorUsedError;
  int? get endYear => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  DateTime? get modified => throw _privateConstructorUsedError;
  ImageDto? get thumbnail => throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get comics => throw _privateConstructorUsedError;
  GenericList<StorySummaryDto>? get stories =>
      throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get events => throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get characters =>
      throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get creators =>
      throw _privateConstructorUsedError;
  CommonSummary? get next => throw _privateConstructorUsedError;
  CommonSummary? get previous => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeriesDtoCopyWith<SeriesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesDtoCopyWith<$Res> {
  factory $SeriesDtoCopyWith(SeriesDto value, $Res Function(SeriesDto) then) =
      _$SeriesDtoCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? title,
      String? description,
      String? resourceURI,
      List<UrlDto>? urls,
      int? startYear,
      int? endYear,
      String? rating,
      DateTime? modified,
      ImageDto? thumbnail,
      GenericList<CommonSummary>? comics,
      GenericList<StorySummaryDto>? stories,
      GenericList<CommonSummary>? events,
      GenericList<CommonSummary>? characters,
      GenericList<CommonSummary>? creators,
      CommonSummary? next,
      CommonSummary? previous});

  $ImageDtoCopyWith<$Res>? get thumbnail;
  $GenericListCopyWith<CommonSummary, $Res>? get comics;
  $GenericListCopyWith<StorySummaryDto, $Res>? get stories;
  $GenericListCopyWith<CommonSummary, $Res>? get events;
  $GenericListCopyWith<CommonSummary, $Res>? get characters;
  $GenericListCopyWith<CommonSummary, $Res>? get creators;
  $CommonSummaryCopyWith<$Res>? get next;
  $CommonSummaryCopyWith<$Res>? get previous;
}

/// @nodoc
class _$SeriesDtoCopyWithImpl<$Res> implements $SeriesDtoCopyWith<$Res> {
  _$SeriesDtoCopyWithImpl(this._value, this._then);

  final SeriesDto _value;
  // ignore: unused_field
  final $Res Function(SeriesDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? resourceURI = freezed,
    Object? urls = freezed,
    Object? startYear = freezed,
    Object? endYear = freezed,
    Object? rating = freezed,
    Object? modified = freezed,
    Object? thumbnail = freezed,
    Object? comics = freezed,
    Object? stories = freezed,
    Object? events = freezed,
    Object? characters = freezed,
    Object? creators = freezed,
    Object? next = freezed,
    Object? previous = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      resourceURI: resourceURI == freezed
          ? _value.resourceURI
          : resourceURI // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: urls == freezed
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<UrlDto>?,
      startYear: startYear == freezed
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as int?,
      endYear: endYear == freezed
          ? _value.endYear
          : endYear // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: modified == freezed
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      characters: characters == freezed
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
      creators: creators == freezed
          ? _value.creators
          : creators // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as CommonSummary?,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as CommonSummary?,
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
  $GenericListCopyWith<CommonSummary, $Res>? get characters {
    if (_value.characters == null) {
      return null;
    }

    return $GenericListCopyWith<CommonSummary, $Res>(_value.characters!,
        (value) {
      return _then(_value.copyWith(characters: value));
    });
  }

  @override
  $GenericListCopyWith<CommonSummary, $Res>? get creators {
    if (_value.creators == null) {
      return null;
    }

    return $GenericListCopyWith<CommonSummary, $Res>(_value.creators!, (value) {
      return _then(_value.copyWith(creators: value));
    });
  }

  @override
  $CommonSummaryCopyWith<$Res>? get next {
    if (_value.next == null) {
      return null;
    }

    return $CommonSummaryCopyWith<$Res>(_value.next!, (value) {
      return _then(_value.copyWith(next: value));
    });
  }

  @override
  $CommonSummaryCopyWith<$Res>? get previous {
    if (_value.previous == null) {
      return null;
    }

    return $CommonSummaryCopyWith<$Res>(_value.previous!, (value) {
      return _then(_value.copyWith(previous: value));
    });
  }
}

/// @nodoc
abstract class _$$_SeriesDtoCopyWith<$Res> implements $SeriesDtoCopyWith<$Res> {
  factory _$$_SeriesDtoCopyWith(
          _$_SeriesDto value, $Res Function(_$_SeriesDto) then) =
      __$$_SeriesDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? title,
      String? description,
      String? resourceURI,
      List<UrlDto>? urls,
      int? startYear,
      int? endYear,
      String? rating,
      DateTime? modified,
      ImageDto? thumbnail,
      GenericList<CommonSummary>? comics,
      GenericList<StorySummaryDto>? stories,
      GenericList<CommonSummary>? events,
      GenericList<CommonSummary>? characters,
      GenericList<CommonSummary>? creators,
      CommonSummary? next,
      CommonSummary? previous});

  @override
  $ImageDtoCopyWith<$Res>? get thumbnail;
  @override
  $GenericListCopyWith<CommonSummary, $Res>? get comics;
  @override
  $GenericListCopyWith<StorySummaryDto, $Res>? get stories;
  @override
  $GenericListCopyWith<CommonSummary, $Res>? get events;
  @override
  $GenericListCopyWith<CommonSummary, $Res>? get characters;
  @override
  $GenericListCopyWith<CommonSummary, $Res>? get creators;
  @override
  $CommonSummaryCopyWith<$Res>? get next;
  @override
  $CommonSummaryCopyWith<$Res>? get previous;
}

/// @nodoc
class __$$_SeriesDtoCopyWithImpl<$Res> extends _$SeriesDtoCopyWithImpl<$Res>
    implements _$$_SeriesDtoCopyWith<$Res> {
  __$$_SeriesDtoCopyWithImpl(
      _$_SeriesDto _value, $Res Function(_$_SeriesDto) _then)
      : super(_value, (v) => _then(v as _$_SeriesDto));

  @override
  _$_SeriesDto get _value => super._value as _$_SeriesDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? resourceURI = freezed,
    Object? urls = freezed,
    Object? startYear = freezed,
    Object? endYear = freezed,
    Object? rating = freezed,
    Object? modified = freezed,
    Object? thumbnail = freezed,
    Object? comics = freezed,
    Object? stories = freezed,
    Object? events = freezed,
    Object? characters = freezed,
    Object? creators = freezed,
    Object? next = freezed,
    Object? previous = freezed,
  }) {
    return _then(_$_SeriesDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      resourceURI: resourceURI == freezed
          ? _value.resourceURI
          : resourceURI // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: urls == freezed
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<UrlDto>?,
      startYear: startYear == freezed
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as int?,
      endYear: endYear == freezed
          ? _value.endYear
          : endYear // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: modified == freezed
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      characters: characters == freezed
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
      creators: creators == freezed
          ? _value.creators
          : creators // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as CommonSummary?,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as CommonSummary?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SeriesDto extends _SeriesDto {
  const _$_SeriesDto(
      {this.id,
      this.title,
      this.description,
      this.resourceURI,
      final List<UrlDto>? urls,
      this.startYear,
      this.endYear,
      this.rating,
      this.modified,
      this.thumbnail,
      this.comics,
      this.stories,
      this.events,
      this.characters,
      this.creators,
      this.next,
      this.previous})
      : _urls = urls,
        super._();

  factory _$_SeriesDto.fromJson(Map<String, dynamic> json) =>
      _$$_SeriesDtoFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? description;
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
  final int? startYear;
  @override
  final int? endYear;
  @override
  final String? rating;
  @override
  final DateTime? modified;
  @override
  final ImageDto? thumbnail;
  @override
  final GenericList<CommonSummary>? comics;
  @override
  final GenericList<StorySummaryDto>? stories;
  @override
  final GenericList<CommonSummary>? events;
  @override
  final GenericList<CommonSummary>? characters;
  @override
  final GenericList<CommonSummary>? creators;
  @override
  final CommonSummary? next;
  @override
  final CommonSummary? previous;

  @override
  String toString() {
    return 'SeriesDto(id: $id, title: $title, description: $description, resourceURI: $resourceURI, urls: $urls, startYear: $startYear, endYear: $endYear, rating: $rating, modified: $modified, thumbnail: $thumbnail, comics: $comics, stories: $stories, events: $events, characters: $characters, creators: $creators, next: $next, previous: $previous)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeriesDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.resourceURI, resourceURI) &&
            const DeepCollectionEquality().equals(other._urls, _urls) &&
            const DeepCollectionEquality().equals(other.startYear, startYear) &&
            const DeepCollectionEquality().equals(other.endYear, endYear) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.modified, modified) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality().equals(other.comics, comics) &&
            const DeepCollectionEquality().equals(other.stories, stories) &&
            const DeepCollectionEquality().equals(other.events, events) &&
            const DeepCollectionEquality()
                .equals(other.characters, characters) &&
            const DeepCollectionEquality().equals(other.creators, creators) &&
            const DeepCollectionEquality().equals(other.next, next) &&
            const DeepCollectionEquality().equals(other.previous, previous));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(resourceURI),
      const DeepCollectionEquality().hash(_urls),
      const DeepCollectionEquality().hash(startYear),
      const DeepCollectionEquality().hash(endYear),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(modified),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(comics),
      const DeepCollectionEquality().hash(stories),
      const DeepCollectionEquality().hash(events),
      const DeepCollectionEquality().hash(characters),
      const DeepCollectionEquality().hash(creators),
      const DeepCollectionEquality().hash(next),
      const DeepCollectionEquality().hash(previous));

  @JsonKey(ignore: true)
  @override
  _$$_SeriesDtoCopyWith<_$_SeriesDto> get copyWith =>
      __$$_SeriesDtoCopyWithImpl<_$_SeriesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeriesDtoToJson(this);
  }
}

abstract class _SeriesDto extends SeriesDto {
  const factory _SeriesDto(
      {final int? id,
      final String? title,
      final String? description,
      final String? resourceURI,
      final List<UrlDto>? urls,
      final int? startYear,
      final int? endYear,
      final String? rating,
      final DateTime? modified,
      final ImageDto? thumbnail,
      final GenericList<CommonSummary>? comics,
      final GenericList<StorySummaryDto>? stories,
      final GenericList<CommonSummary>? events,
      final GenericList<CommonSummary>? characters,
      final GenericList<CommonSummary>? creators,
      final CommonSummary? next,
      final CommonSummary? previous}) = _$_SeriesDto;
  const _SeriesDto._() : super._();

  factory _SeriesDto.fromJson(Map<String, dynamic> json) =
      _$_SeriesDto.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get resourceURI => throw _privateConstructorUsedError;
  @override
  List<UrlDto>? get urls => throw _privateConstructorUsedError;
  @override
  int? get startYear => throw _privateConstructorUsedError;
  @override
  int? get endYear => throw _privateConstructorUsedError;
  @override
  String? get rating => throw _privateConstructorUsedError;
  @override
  DateTime? get modified => throw _privateConstructorUsedError;
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
  GenericList<CommonSummary>? get characters =>
      throw _privateConstructorUsedError;
  @override
  GenericList<CommonSummary>? get creators =>
      throw _privateConstructorUsedError;
  @override
  CommonSummary? get next => throw _privateConstructorUsedError;
  @override
  CommonSummary? get previous => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SeriesDtoCopyWith<_$_SeriesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

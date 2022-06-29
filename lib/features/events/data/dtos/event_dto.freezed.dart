// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventDto _$EventDtoFromJson(Map<String, dynamic> json) {
  return _EventDto.fromJson(json);
}

/// @nodoc
mixin _$EventDto {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get resourceURI => throw _privateConstructorUsedError;
  List<UrlDto>? get urls => throw _privateConstructorUsedError;
  DateTime? get modified => throw _privateConstructorUsedError;
  DateTime? get start => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;
  ImageDto? get thumbnail => throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get comics => throw _privateConstructorUsedError;
  GenericList<StorySummaryDto>? get stories =>
      throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get series => throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get characters =>
      throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get creators =>
      throw _privateConstructorUsedError;
  CommonSummary? get next => throw _privateConstructorUsedError;
  CommonSummary? get previous => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventDtoCopyWith<EventDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDtoCopyWith<$Res> {
  factory $EventDtoCopyWith(EventDto value, $Res Function(EventDto) then) =
      _$EventDtoCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? title,
      String? description,
      String? resourceURI,
      List<UrlDto>? urls,
      DateTime? modified,
      DateTime? start,
      DateTime? end,
      ImageDto? thumbnail,
      GenericList<CommonSummary>? comics,
      GenericList<StorySummaryDto>? stories,
      GenericList<CommonSummary>? series,
      GenericList<CommonSummary>? characters,
      GenericList<CommonSummary>? creators,
      CommonSummary? next,
      CommonSummary? previous});

  $ImageDtoCopyWith<$Res>? get thumbnail;
  $GenericListCopyWith<CommonSummary, $Res>? get comics;
  $GenericListCopyWith<StorySummaryDto, $Res>? get stories;
  $GenericListCopyWith<CommonSummary, $Res>? get series;
  $GenericListCopyWith<CommonSummary, $Res>? get characters;
  $GenericListCopyWith<CommonSummary, $Res>? get creators;
  $CommonSummaryCopyWith<$Res>? get next;
  $CommonSummaryCopyWith<$Res>? get previous;
}

/// @nodoc
class _$EventDtoCopyWithImpl<$Res> implements $EventDtoCopyWith<$Res> {
  _$EventDtoCopyWithImpl(this._value, this._then);

  final EventDto _value;
  // ignore: unused_field
  final $Res Function(EventDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? resourceURI = freezed,
    Object? urls = freezed,
    Object? modified = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? thumbnail = freezed,
    Object? comics = freezed,
    Object? stories = freezed,
    Object? series = freezed,
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
      modified: modified == freezed
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
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
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
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
  $GenericListCopyWith<CommonSummary, $Res>? get series {
    if (_value.series == null) {
      return null;
    }

    return $GenericListCopyWith<CommonSummary, $Res>(_value.series!, (value) {
      return _then(_value.copyWith(series: value));
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
abstract class _$$_EventDtoCopyWith<$Res> implements $EventDtoCopyWith<$Res> {
  factory _$$_EventDtoCopyWith(
          _$_EventDto value, $Res Function(_$_EventDto) then) =
      __$$_EventDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? title,
      String? description,
      String? resourceURI,
      List<UrlDto>? urls,
      DateTime? modified,
      DateTime? start,
      DateTime? end,
      ImageDto? thumbnail,
      GenericList<CommonSummary>? comics,
      GenericList<StorySummaryDto>? stories,
      GenericList<CommonSummary>? series,
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
  $GenericListCopyWith<CommonSummary, $Res>? get series;
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
class __$$_EventDtoCopyWithImpl<$Res> extends _$EventDtoCopyWithImpl<$Res>
    implements _$$_EventDtoCopyWith<$Res> {
  __$$_EventDtoCopyWithImpl(
      _$_EventDto _value, $Res Function(_$_EventDto) _then)
      : super(_value, (v) => _then(v as _$_EventDto));

  @override
  _$_EventDto get _value => super._value as _$_EventDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? resourceURI = freezed,
    Object? urls = freezed,
    Object? modified = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? thumbnail = freezed,
    Object? comics = freezed,
    Object? stories = freezed,
    Object? series = freezed,
    Object? characters = freezed,
    Object? creators = freezed,
    Object? next = freezed,
    Object? previous = freezed,
  }) {
    return _then(_$_EventDto(
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
      modified: modified == freezed
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
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
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
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
class _$_EventDto extends _EventDto {
  const _$_EventDto(
      {this.id,
      this.title,
      this.description,
      this.resourceURI,
      final List<UrlDto>? urls,
      this.modified,
      this.start,
      this.end,
      this.thumbnail,
      this.comics,
      this.stories,
      this.series,
      this.characters,
      this.creators,
      this.next,
      this.previous})
      : _urls = urls,
        super._();

  factory _$_EventDto.fromJson(Map<String, dynamic> json) =>
      _$$_EventDtoFromJson(json);

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
  final DateTime? modified;
  @override
  final DateTime? start;
  @override
  final DateTime? end;
  @override
  final ImageDto? thumbnail;
  @override
  final GenericList<CommonSummary>? comics;
  @override
  final GenericList<StorySummaryDto>? stories;
  @override
  final GenericList<CommonSummary>? series;
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
    return 'EventDto(id: $id, title: $title, description: $description, resourceURI: $resourceURI, urls: $urls, modified: $modified, start: $start, end: $end, thumbnail: $thumbnail, comics: $comics, stories: $stories, series: $series, characters: $characters, creators: $creators, next: $next, previous: $previous)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.resourceURI, resourceURI) &&
            const DeepCollectionEquality().equals(other._urls, _urls) &&
            const DeepCollectionEquality().equals(other.modified, modified) &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality().equals(other.comics, comics) &&
            const DeepCollectionEquality().equals(other.stories, stories) &&
            const DeepCollectionEquality().equals(other.series, series) &&
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
      const DeepCollectionEquality().hash(modified),
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(comics),
      const DeepCollectionEquality().hash(stories),
      const DeepCollectionEquality().hash(series),
      const DeepCollectionEquality().hash(characters),
      const DeepCollectionEquality().hash(creators),
      const DeepCollectionEquality().hash(next),
      const DeepCollectionEquality().hash(previous));

  @JsonKey(ignore: true)
  @override
  _$$_EventDtoCopyWith<_$_EventDto> get copyWith =>
      __$$_EventDtoCopyWithImpl<_$_EventDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventDtoToJson(this);
  }
}

abstract class _EventDto extends EventDto {
  const factory _EventDto(
      {final int? id,
      final String? title,
      final String? description,
      final String? resourceURI,
      final List<UrlDto>? urls,
      final DateTime? modified,
      final DateTime? start,
      final DateTime? end,
      final ImageDto? thumbnail,
      final GenericList<CommonSummary>? comics,
      final GenericList<StorySummaryDto>? stories,
      final GenericList<CommonSummary>? series,
      final GenericList<CommonSummary>? characters,
      final GenericList<CommonSummary>? creators,
      final CommonSummary? next,
      final CommonSummary? previous}) = _$_EventDto;
  const _EventDto._() : super._();

  factory _EventDto.fromJson(Map<String, dynamic> json) = _$_EventDto.fromJson;

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
  DateTime? get modified => throw _privateConstructorUsedError;
  @override
  DateTime? get start => throw _privateConstructorUsedError;
  @override
  DateTime? get end => throw _privateConstructorUsedError;
  @override
  ImageDto? get thumbnail => throw _privateConstructorUsedError;
  @override
  GenericList<CommonSummary>? get comics => throw _privateConstructorUsedError;
  @override
  GenericList<StorySummaryDto>? get stories =>
      throw _privateConstructorUsedError;
  @override
  GenericList<CommonSummary>? get series => throw _privateConstructorUsedError;
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
  _$$_EventDtoCopyWith<_$_EventDto> get copyWith =>
      throw _privateConstructorUsedError;
}

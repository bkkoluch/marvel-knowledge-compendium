// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'creator_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreatorDto _$CreatorDtoFromJson(Map<String, dynamic> json) {
  return _CreatorDto.fromJson(json);
}

/// @nodoc
mixin _$CreatorDto {
  int? get id => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get middleName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get suffix => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  DateTime? get modified => throw _privateConstructorUsedError;
  String? get resourceURI => throw _privateConstructorUsedError;
  List<UrlDto>? get urls => throw _privateConstructorUsedError;
  ImageDto? get thumbnail => throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get series => throw _privateConstructorUsedError;
  GenericList<StorySummaryDto>? get stories =>
      throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get comics => throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get events => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatorDtoCopyWith<CreatorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatorDtoCopyWith<$Res> {
  factory $CreatorDtoCopyWith(
          CreatorDto value, $Res Function(CreatorDto) then) =
      _$CreatorDtoCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? firstName,
      String? middleName,
      String? lastName,
      String? suffix,
      String? fullName,
      DateTime? modified,
      String? resourceURI,
      List<UrlDto>? urls,
      ImageDto? thumbnail,
      GenericList<CommonSummary>? series,
      GenericList<StorySummaryDto>? stories,
      GenericList<CommonSummary>? comics,
      GenericList<CommonSummary>? events});

  $ImageDtoCopyWith<$Res>? get thumbnail;
  $GenericListCopyWith<CommonSummary, $Res>? get series;
  $GenericListCopyWith<StorySummaryDto, $Res>? get stories;
  $GenericListCopyWith<CommonSummary, $Res>? get comics;
  $GenericListCopyWith<CommonSummary, $Res>? get events;
}

/// @nodoc
class _$CreatorDtoCopyWithImpl<$Res> implements $CreatorDtoCopyWith<$Res> {
  _$CreatorDtoCopyWithImpl(this._value, this._then);

  final CreatorDto _value;
  // ignore: unused_field
  final $Res Function(CreatorDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? suffix = freezed,
    Object? fullName = freezed,
    Object? modified = freezed,
    Object? resourceURI = freezed,
    Object? urls = freezed,
    Object? thumbnail = freezed,
    Object? series = freezed,
    Object? stories = freezed,
    Object? comics = freezed,
    Object? events = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: middleName == freezed
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: suffix == freezed
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
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
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
      stories: stories == freezed
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as GenericList<StorySummaryDto>?,
      comics: comics == freezed
          ? _value.comics
          : comics // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
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
  $GenericListCopyWith<CommonSummary, $Res>? get series {
    if (_value.series == null) {
      return null;
    }

    return $GenericListCopyWith<CommonSummary, $Res>(_value.series!, (value) {
      return _then(_value.copyWith(series: value));
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
  $GenericListCopyWith<CommonSummary, $Res>? get comics {
    if (_value.comics == null) {
      return null;
    }

    return $GenericListCopyWith<CommonSummary, $Res>(_value.comics!, (value) {
      return _then(_value.copyWith(comics: value));
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
}

/// @nodoc
abstract class _$$_CreatorDtoCopyWith<$Res>
    implements $CreatorDtoCopyWith<$Res> {
  factory _$$_CreatorDtoCopyWith(
          _$_CreatorDto value, $Res Function(_$_CreatorDto) then) =
      __$$_CreatorDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? firstName,
      String? middleName,
      String? lastName,
      String? suffix,
      String? fullName,
      DateTime? modified,
      String? resourceURI,
      List<UrlDto>? urls,
      ImageDto? thumbnail,
      GenericList<CommonSummary>? series,
      GenericList<StorySummaryDto>? stories,
      GenericList<CommonSummary>? comics,
      GenericList<CommonSummary>? events});

  @override
  $ImageDtoCopyWith<$Res>? get thumbnail;
  @override
  $GenericListCopyWith<CommonSummary, $Res>? get series;
  @override
  $GenericListCopyWith<StorySummaryDto, $Res>? get stories;
  @override
  $GenericListCopyWith<CommonSummary, $Res>? get comics;
  @override
  $GenericListCopyWith<CommonSummary, $Res>? get events;
}

/// @nodoc
class __$$_CreatorDtoCopyWithImpl<$Res> extends _$CreatorDtoCopyWithImpl<$Res>
    implements _$$_CreatorDtoCopyWith<$Res> {
  __$$_CreatorDtoCopyWithImpl(
      _$_CreatorDto _value, $Res Function(_$_CreatorDto) _then)
      : super(_value, (v) => _then(v as _$_CreatorDto));

  @override
  _$_CreatorDto get _value => super._value as _$_CreatorDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? suffix = freezed,
    Object? fullName = freezed,
    Object? modified = freezed,
    Object? resourceURI = freezed,
    Object? urls = freezed,
    Object? thumbnail = freezed,
    Object? series = freezed,
    Object? stories = freezed,
    Object? comics = freezed,
    Object? events = freezed,
  }) {
    return _then(_$_CreatorDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: middleName == freezed
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: suffix == freezed
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
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
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
      stories: stories == freezed
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as GenericList<StorySummaryDto>?,
      comics: comics == freezed
          ? _value.comics
          : comics // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreatorDto extends _CreatorDto {
  const _$_CreatorDto(
      {this.id,
      this.firstName,
      this.middleName,
      this.lastName,
      this.suffix,
      this.fullName,
      this.modified,
      this.resourceURI,
      final List<UrlDto>? urls,
      this.thumbnail,
      this.series,
      this.stories,
      this.comics,
      this.events})
      : _urls = urls,
        super._();

  factory _$_CreatorDto.fromJson(Map<String, dynamic> json) =>
      _$$_CreatorDtoFromJson(json);

  @override
  final int? id;
  @override
  final String? firstName;
  @override
  final String? middleName;
  @override
  final String? lastName;
  @override
  final String? suffix;
  @override
  final String? fullName;
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
  final GenericList<CommonSummary>? series;
  @override
  final GenericList<StorySummaryDto>? stories;
  @override
  final GenericList<CommonSummary>? comics;
  @override
  final GenericList<CommonSummary>? events;

  @override
  String toString() {
    return 'CreatorDto(id: $id, firstName: $firstName, middleName: $middleName, lastName: $lastName, suffix: $suffix, fullName: $fullName, modified: $modified, resourceURI: $resourceURI, urls: $urls, thumbnail: $thumbnail, series: $series, stories: $stories, comics: $comics, events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatorDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality()
                .equals(other.middleName, middleName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.suffix, suffix) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality().equals(other.modified, modified) &&
            const DeepCollectionEquality()
                .equals(other.resourceURI, resourceURI) &&
            const DeepCollectionEquality().equals(other._urls, _urls) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality().equals(other.series, series) &&
            const DeepCollectionEquality().equals(other.stories, stories) &&
            const DeepCollectionEquality().equals(other.comics, comics) &&
            const DeepCollectionEquality().equals(other.events, events));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(middleName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(suffix),
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(modified),
      const DeepCollectionEquality().hash(resourceURI),
      const DeepCollectionEquality().hash(_urls),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(series),
      const DeepCollectionEquality().hash(stories),
      const DeepCollectionEquality().hash(comics),
      const DeepCollectionEquality().hash(events));

  @JsonKey(ignore: true)
  @override
  _$$_CreatorDtoCopyWith<_$_CreatorDto> get copyWith =>
      __$$_CreatorDtoCopyWithImpl<_$_CreatorDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatorDtoToJson(this);
  }
}

abstract class _CreatorDto extends CreatorDto {
  const factory _CreatorDto(
      {final int? id,
      final String? firstName,
      final String? middleName,
      final String? lastName,
      final String? suffix,
      final String? fullName,
      final DateTime? modified,
      final String? resourceURI,
      final List<UrlDto>? urls,
      final ImageDto? thumbnail,
      final GenericList<CommonSummary>? series,
      final GenericList<StorySummaryDto>? stories,
      final GenericList<CommonSummary>? comics,
      final GenericList<CommonSummary>? events}) = _$_CreatorDto;
  const _CreatorDto._() : super._();

  factory _CreatorDto.fromJson(Map<String, dynamic> json) =
      _$_CreatorDto.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get firstName => throw _privateConstructorUsedError;
  @override
  String? get middleName => throw _privateConstructorUsedError;
  @override
  String? get lastName => throw _privateConstructorUsedError;
  @override
  String? get suffix => throw _privateConstructorUsedError;
  @override
  String? get fullName => throw _privateConstructorUsedError;
  @override
  DateTime? get modified => throw _privateConstructorUsedError;
  @override
  String? get resourceURI => throw _privateConstructorUsedError;
  @override
  List<UrlDto>? get urls => throw _privateConstructorUsedError;
  @override
  ImageDto? get thumbnail => throw _privateConstructorUsedError;
  @override
  GenericList<CommonSummary>? get series => throw _privateConstructorUsedError;
  @override
  GenericList<StorySummaryDto>? get stories =>
      throw _privateConstructorUsedError;
  @override
  GenericList<CommonSummary>? get comics => throw _privateConstructorUsedError;
  @override
  GenericList<CommonSummary>? get events => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CreatorDtoCopyWith<_$_CreatorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'story_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoryDto _$StoryDtoFromJson(Map<String, dynamic> json) {
  return _StoryDto.fromJson(json);
}

/// @nodoc
mixin _$StoryDto {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get resourceURI => throw _privateConstructorUsedError;
  DateTime? get modified => throw _privateConstructorUsedError;
  ImageDto? get thumbnail => throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get comics => throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get series => throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get events => throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get characters =>
      throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get creators =>
      throw _privateConstructorUsedError;
  CommonSummary? get originalIssue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoryDtoCopyWith<StoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryDtoCopyWith<$Res> {
  factory $StoryDtoCopyWith(StoryDto value, $Res Function(StoryDto) then) =
      _$StoryDtoCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? title,
      String? description,
      String? resourceURI,
      DateTime? modified,
      ImageDto? thumbnail,
      GenericList<CommonSummary>? comics,
      GenericList<CommonSummary>? series,
      GenericList<CommonSummary>? events,
      GenericList<CommonSummary>? characters,
      GenericList<CommonSummary>? creators,
      CommonSummary? originalIssue});

  $ImageDtoCopyWith<$Res>? get thumbnail;
  $GenericListCopyWith<CommonSummary, $Res>? get comics;
  $GenericListCopyWith<CommonSummary, $Res>? get series;
  $GenericListCopyWith<CommonSummary, $Res>? get events;
  $GenericListCopyWith<CommonSummary, $Res>? get characters;
  $GenericListCopyWith<CommonSummary, $Res>? get creators;
  $CommonSummaryCopyWith<$Res>? get originalIssue;
}

/// @nodoc
class _$StoryDtoCopyWithImpl<$Res> implements $StoryDtoCopyWith<$Res> {
  _$StoryDtoCopyWithImpl(this._value, this._then);

  final StoryDto _value;
  // ignore: unused_field
  final $Res Function(StoryDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? resourceURI = freezed,
    Object? modified = freezed,
    Object? thumbnail = freezed,
    Object? comics = freezed,
    Object? series = freezed,
    Object? events = freezed,
    Object? characters = freezed,
    Object? creators = freezed,
    Object? originalIssue = freezed,
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
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
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
      originalIssue: originalIssue == freezed
          ? _value.originalIssue
          : originalIssue // ignore: cast_nullable_to_non_nullable
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
  $GenericListCopyWith<CommonSummary, $Res>? get series {
    if (_value.series == null) {
      return null;
    }

    return $GenericListCopyWith<CommonSummary, $Res>(_value.series!, (value) {
      return _then(_value.copyWith(series: value));
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
  $CommonSummaryCopyWith<$Res>? get originalIssue {
    if (_value.originalIssue == null) {
      return null;
    }

    return $CommonSummaryCopyWith<$Res>(_value.originalIssue!, (value) {
      return _then(_value.copyWith(originalIssue: value));
    });
  }
}

/// @nodoc
abstract class _$$_StoryDtoCopyWith<$Res> implements $StoryDtoCopyWith<$Res> {
  factory _$$_StoryDtoCopyWith(
          _$_StoryDto value, $Res Function(_$_StoryDto) then) =
      __$$_StoryDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? title,
      String? description,
      String? resourceURI,
      DateTime? modified,
      ImageDto? thumbnail,
      GenericList<CommonSummary>? comics,
      GenericList<CommonSummary>? series,
      GenericList<CommonSummary>? events,
      GenericList<CommonSummary>? characters,
      GenericList<CommonSummary>? creators,
      CommonSummary? originalIssue});

  @override
  $ImageDtoCopyWith<$Res>? get thumbnail;
  @override
  $GenericListCopyWith<CommonSummary, $Res>? get comics;
  @override
  $GenericListCopyWith<CommonSummary, $Res>? get series;
  @override
  $GenericListCopyWith<CommonSummary, $Res>? get events;
  @override
  $GenericListCopyWith<CommonSummary, $Res>? get characters;
  @override
  $GenericListCopyWith<CommonSummary, $Res>? get creators;
  @override
  $CommonSummaryCopyWith<$Res>? get originalIssue;
}

/// @nodoc
class __$$_StoryDtoCopyWithImpl<$Res> extends _$StoryDtoCopyWithImpl<$Res>
    implements _$$_StoryDtoCopyWith<$Res> {
  __$$_StoryDtoCopyWithImpl(
      _$_StoryDto _value, $Res Function(_$_StoryDto) _then)
      : super(_value, (v) => _then(v as _$_StoryDto));

  @override
  _$_StoryDto get _value => super._value as _$_StoryDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? resourceURI = freezed,
    Object? modified = freezed,
    Object? thumbnail = freezed,
    Object? comics = freezed,
    Object? series = freezed,
    Object? events = freezed,
    Object? characters = freezed,
    Object? creators = freezed,
    Object? originalIssue = freezed,
  }) {
    return _then(_$_StoryDto(
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
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
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
      originalIssue: originalIssue == freezed
          ? _value.originalIssue
          : originalIssue // ignore: cast_nullable_to_non_nullable
              as CommonSummary?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoryDto extends _StoryDto {
  const _$_StoryDto(
      {this.id,
      this.title,
      this.description,
      this.resourceURI,
      this.modified,
      this.thumbnail,
      this.comics,
      this.series,
      this.events,
      this.characters,
      this.creators,
      this.originalIssue})
      : super._();

  factory _$_StoryDto.fromJson(Map<String, dynamic> json) =>
      _$$_StoryDtoFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? resourceURI;
  @override
  final DateTime? modified;
  @override
  final ImageDto? thumbnail;
  @override
  final GenericList<CommonSummary>? comics;
  @override
  final GenericList<CommonSummary>? series;
  @override
  final GenericList<CommonSummary>? events;
  @override
  final GenericList<CommonSummary>? characters;
  @override
  final GenericList<CommonSummary>? creators;
  @override
  final CommonSummary? originalIssue;

  @override
  String toString() {
    return 'StoryDto(id: $id, title: $title, description: $description, resourceURI: $resourceURI, modified: $modified, thumbnail: $thumbnail, comics: $comics, series: $series, events: $events, characters: $characters, creators: $creators, originalIssue: $originalIssue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoryDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.resourceURI, resourceURI) &&
            const DeepCollectionEquality().equals(other.modified, modified) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality().equals(other.comics, comics) &&
            const DeepCollectionEquality().equals(other.series, series) &&
            const DeepCollectionEquality().equals(other.events, events) &&
            const DeepCollectionEquality()
                .equals(other.characters, characters) &&
            const DeepCollectionEquality().equals(other.creators, creators) &&
            const DeepCollectionEquality()
                .equals(other.originalIssue, originalIssue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(resourceURI),
      const DeepCollectionEquality().hash(modified),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(comics),
      const DeepCollectionEquality().hash(series),
      const DeepCollectionEquality().hash(events),
      const DeepCollectionEquality().hash(characters),
      const DeepCollectionEquality().hash(creators),
      const DeepCollectionEquality().hash(originalIssue));

  @JsonKey(ignore: true)
  @override
  _$$_StoryDtoCopyWith<_$_StoryDto> get copyWith =>
      __$$_StoryDtoCopyWithImpl<_$_StoryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoryDtoToJson(this);
  }
}

abstract class _StoryDto extends StoryDto {
  const factory _StoryDto(
      {final int? id,
      final String? title,
      final String? description,
      final String? resourceURI,
      final DateTime? modified,
      final ImageDto? thumbnail,
      final GenericList<CommonSummary>? comics,
      final GenericList<CommonSummary>? series,
      final GenericList<CommonSummary>? events,
      final GenericList<CommonSummary>? characters,
      final GenericList<CommonSummary>? creators,
      final CommonSummary? originalIssue}) = _$_StoryDto;
  const _StoryDto._() : super._();

  factory _StoryDto.fromJson(Map<String, dynamic> json) = _$_StoryDto.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get resourceURI => throw _privateConstructorUsedError;
  @override
  DateTime? get modified => throw _privateConstructorUsedError;
  @override
  ImageDto? get thumbnail => throw _privateConstructorUsedError;
  @override
  GenericList<CommonSummary>? get comics => throw _privateConstructorUsedError;
  @override
  GenericList<CommonSummary>? get series => throw _privateConstructorUsedError;
  @override
  GenericList<CommonSummary>? get events => throw _privateConstructorUsedError;
  @override
  GenericList<CommonSummary>? get characters =>
      throw _privateConstructorUsedError;
  @override
  GenericList<CommonSummary>? get creators =>
      throw _privateConstructorUsedError;
  @override
  CommonSummary? get originalIssue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StoryDtoCopyWith<_$_StoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comic_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComicDto _$ComicDtoFromJson(Map<String, dynamic> json) {
  return _ComicDto.fromJson(json);
}

/// @nodoc
mixin _$ComicDto {
  int? get id => throw _privateConstructorUsedError;
  int? get digitalId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  double? get issueNumber => throw _privateConstructorUsedError;
  String? get variantDescription => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get modified => throw _privateConstructorUsedError;
  String? get isbn => throw _privateConstructorUsedError;
  String? get upc => throw _privateConstructorUsedError;
  String? get diamondCode => throw _privateConstructorUsedError;
  String? get ean => throw _privateConstructorUsedError;
  String? get issn => throw _privateConstructorUsedError;
  String? get format => throw _privateConstructorUsedError;
  int? get pageCount => throw _privateConstructorUsedError;
  List<TextObjectDto>? get textObjects => throw _privateConstructorUsedError;
  String? get resourceURI => throw _privateConstructorUsedError;
  List<UrlDto>? get urls => throw _privateConstructorUsedError;
  CommonSummary? get series => throw _privateConstructorUsedError;
  List<CommonSummary>? get variants => throw _privateConstructorUsedError;
  List<CommonSummary>? get collections => throw _privateConstructorUsedError;
  List<CommonSummary>? get collectedIssues =>
      throw _privateConstructorUsedError;
  List<ComicDateDto>? get dates => throw _privateConstructorUsedError;
  List<ComicPriceDto>? get prices => throw _privateConstructorUsedError;
  ImageDto? get thumbnail => throw _privateConstructorUsedError;
  List<ImageDto>? get images => throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get creators =>
      throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get characters =>
      throw _privateConstructorUsedError;
  GenericList<StorySummaryDto>? get stories =>
      throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get events => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicDtoCopyWith<ComicDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicDtoCopyWith<$Res> {
  factory $ComicDtoCopyWith(ComicDto value, $Res Function(ComicDto) then) =
      _$ComicDtoCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? digitalId,
      String? title,
      double? issueNumber,
      String? variantDescription,
      String? description,
      DateTime? modified,
      String? isbn,
      String? upc,
      String? diamondCode,
      String? ean,
      String? issn,
      String? format,
      int? pageCount,
      List<TextObjectDto>? textObjects,
      String? resourceURI,
      List<UrlDto>? urls,
      CommonSummary? series,
      List<CommonSummary>? variants,
      List<CommonSummary>? collections,
      List<CommonSummary>? collectedIssues,
      List<ComicDateDto>? dates,
      List<ComicPriceDto>? prices,
      ImageDto? thumbnail,
      List<ImageDto>? images,
      GenericList<CommonSummary>? creators,
      GenericList<CommonSummary>? characters,
      GenericList<StorySummaryDto>? stories,
      GenericList<CommonSummary>? events});

  $CommonSummaryCopyWith<$Res>? get series;
  $ImageDtoCopyWith<$Res>? get thumbnail;
  $GenericListCopyWith<CommonSummary, $Res>? get creators;
  $GenericListCopyWith<CommonSummary, $Res>? get characters;
  $GenericListCopyWith<StorySummaryDto, $Res>? get stories;
  $GenericListCopyWith<CommonSummary, $Res>? get events;
}

/// @nodoc
class _$ComicDtoCopyWithImpl<$Res> implements $ComicDtoCopyWith<$Res> {
  _$ComicDtoCopyWithImpl(this._value, this._then);

  final ComicDto _value;
  // ignore: unused_field
  final $Res Function(ComicDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? digitalId = freezed,
    Object? title = freezed,
    Object? issueNumber = freezed,
    Object? variantDescription = freezed,
    Object? description = freezed,
    Object? modified = freezed,
    Object? isbn = freezed,
    Object? upc = freezed,
    Object? diamondCode = freezed,
    Object? ean = freezed,
    Object? issn = freezed,
    Object? format = freezed,
    Object? pageCount = freezed,
    Object? textObjects = freezed,
    Object? resourceURI = freezed,
    Object? urls = freezed,
    Object? series = freezed,
    Object? variants = freezed,
    Object? collections = freezed,
    Object? collectedIssues = freezed,
    Object? dates = freezed,
    Object? prices = freezed,
    Object? thumbnail = freezed,
    Object? images = freezed,
    Object? creators = freezed,
    Object? characters = freezed,
    Object? stories = freezed,
    Object? events = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      digitalId: digitalId == freezed
          ? _value.digitalId
          : digitalId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      issueNumber: issueNumber == freezed
          ? _value.issueNumber
          : issueNumber // ignore: cast_nullable_to_non_nullable
              as double?,
      variantDescription: variantDescription == freezed
          ? _value.variantDescription
          : variantDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: modified == freezed
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isbn: isbn == freezed
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
      upc: upc == freezed
          ? _value.upc
          : upc // ignore: cast_nullable_to_non_nullable
              as String?,
      diamondCode: diamondCode == freezed
          ? _value.diamondCode
          : diamondCode // ignore: cast_nullable_to_non_nullable
              as String?,
      ean: ean == freezed
          ? _value.ean
          : ean // ignore: cast_nullable_to_non_nullable
              as String?,
      issn: issn == freezed
          ? _value.issn
          : issn // ignore: cast_nullable_to_non_nullable
              as String?,
      format: format == freezed
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      pageCount: pageCount == freezed
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      textObjects: textObjects == freezed
          ? _value.textObjects
          : textObjects // ignore: cast_nullable_to_non_nullable
              as List<TextObjectDto>?,
      resourceURI: resourceURI == freezed
          ? _value.resourceURI
          : resourceURI // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: urls == freezed
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<UrlDto>?,
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as CommonSummary?,
      variants: variants == freezed
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<CommonSummary>?,
      collections: collections == freezed
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<CommonSummary>?,
      collectedIssues: collectedIssues == freezed
          ? _value.collectedIssues
          : collectedIssues // ignore: cast_nullable_to_non_nullable
              as List<CommonSummary>?,
      dates: dates == freezed
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<ComicDateDto>?,
      prices: prices == freezed
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<ComicPriceDto>?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as ImageDto?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageDto>?,
      creators: creators == freezed
          ? _value.creators
          : creators // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
      characters: characters == freezed
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
      stories: stories == freezed
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as GenericList<StorySummaryDto>?,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
    ));
  }

  @override
  $CommonSummaryCopyWith<$Res>? get series {
    if (_value.series == null) {
      return null;
    }

    return $CommonSummaryCopyWith<$Res>(_value.series!, (value) {
      return _then(_value.copyWith(series: value));
    });
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
  $GenericListCopyWith<CommonSummary, $Res>? get creators {
    if (_value.creators == null) {
      return null;
    }

    return $GenericListCopyWith<CommonSummary, $Res>(_value.creators!, (value) {
      return _then(_value.copyWith(creators: value));
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
}

/// @nodoc
abstract class _$$_ComicDtoCopyWith<$Res> implements $ComicDtoCopyWith<$Res> {
  factory _$$_ComicDtoCopyWith(
          _$_ComicDto value, $Res Function(_$_ComicDto) then) =
      __$$_ComicDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? digitalId,
      String? title,
      double? issueNumber,
      String? variantDescription,
      String? description,
      DateTime? modified,
      String? isbn,
      String? upc,
      String? diamondCode,
      String? ean,
      String? issn,
      String? format,
      int? pageCount,
      List<TextObjectDto>? textObjects,
      String? resourceURI,
      List<UrlDto>? urls,
      CommonSummary? series,
      List<CommonSummary>? variants,
      List<CommonSummary>? collections,
      List<CommonSummary>? collectedIssues,
      List<ComicDateDto>? dates,
      List<ComicPriceDto>? prices,
      ImageDto? thumbnail,
      List<ImageDto>? images,
      GenericList<CommonSummary>? creators,
      GenericList<CommonSummary>? characters,
      GenericList<StorySummaryDto>? stories,
      GenericList<CommonSummary>? events});

  @override
  $CommonSummaryCopyWith<$Res>? get series;
  @override
  $ImageDtoCopyWith<$Res>? get thumbnail;
  @override
  $GenericListCopyWith<CommonSummary, $Res>? get creators;
  @override
  $GenericListCopyWith<CommonSummary, $Res>? get characters;
  @override
  $GenericListCopyWith<StorySummaryDto, $Res>? get stories;
  @override
  $GenericListCopyWith<CommonSummary, $Res>? get events;
}

/// @nodoc
class __$$_ComicDtoCopyWithImpl<$Res> extends _$ComicDtoCopyWithImpl<$Res>
    implements _$$_ComicDtoCopyWith<$Res> {
  __$$_ComicDtoCopyWithImpl(
      _$_ComicDto _value, $Res Function(_$_ComicDto) _then)
      : super(_value, (v) => _then(v as _$_ComicDto));

  @override
  _$_ComicDto get _value => super._value as _$_ComicDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? digitalId = freezed,
    Object? title = freezed,
    Object? issueNumber = freezed,
    Object? variantDescription = freezed,
    Object? description = freezed,
    Object? modified = freezed,
    Object? isbn = freezed,
    Object? upc = freezed,
    Object? diamondCode = freezed,
    Object? ean = freezed,
    Object? issn = freezed,
    Object? format = freezed,
    Object? pageCount = freezed,
    Object? textObjects = freezed,
    Object? resourceURI = freezed,
    Object? urls = freezed,
    Object? series = freezed,
    Object? variants = freezed,
    Object? collections = freezed,
    Object? collectedIssues = freezed,
    Object? dates = freezed,
    Object? prices = freezed,
    Object? thumbnail = freezed,
    Object? images = freezed,
    Object? creators = freezed,
    Object? characters = freezed,
    Object? stories = freezed,
    Object? events = freezed,
  }) {
    return _then(_$_ComicDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      digitalId: digitalId == freezed
          ? _value.digitalId
          : digitalId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      issueNumber: issueNumber == freezed
          ? _value.issueNumber
          : issueNumber // ignore: cast_nullable_to_non_nullable
              as double?,
      variantDescription: variantDescription == freezed
          ? _value.variantDescription
          : variantDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: modified == freezed
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isbn: isbn == freezed
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
      upc: upc == freezed
          ? _value.upc
          : upc // ignore: cast_nullable_to_non_nullable
              as String?,
      diamondCode: diamondCode == freezed
          ? _value.diamondCode
          : diamondCode // ignore: cast_nullable_to_non_nullable
              as String?,
      ean: ean == freezed
          ? _value.ean
          : ean // ignore: cast_nullable_to_non_nullable
              as String?,
      issn: issn == freezed
          ? _value.issn
          : issn // ignore: cast_nullable_to_non_nullable
              as String?,
      format: format == freezed
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      pageCount: pageCount == freezed
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      textObjects: textObjects == freezed
          ? _value._textObjects
          : textObjects // ignore: cast_nullable_to_non_nullable
              as List<TextObjectDto>?,
      resourceURI: resourceURI == freezed
          ? _value.resourceURI
          : resourceURI // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: urls == freezed
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<UrlDto>?,
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as CommonSummary?,
      variants: variants == freezed
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<CommonSummary>?,
      collections: collections == freezed
          ? _value._collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<CommonSummary>?,
      collectedIssues: collectedIssues == freezed
          ? _value._collectedIssues
          : collectedIssues // ignore: cast_nullable_to_non_nullable
              as List<CommonSummary>?,
      dates: dates == freezed
          ? _value._dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<ComicDateDto>?,
      prices: prices == freezed
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<ComicPriceDto>?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as ImageDto?,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageDto>?,
      creators: creators == freezed
          ? _value.creators
          : creators // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
      characters: characters == freezed
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
      stories: stories == freezed
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as GenericList<StorySummaryDto>?,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComicDto extends _ComicDto {
  const _$_ComicDto(
      {this.id,
      this.digitalId,
      this.title,
      this.issueNumber,
      this.variantDescription,
      this.description,
      this.modified,
      this.isbn,
      this.upc,
      this.diamondCode,
      this.ean,
      this.issn,
      this.format,
      this.pageCount,
      final List<TextObjectDto>? textObjects,
      this.resourceURI,
      final List<UrlDto>? urls,
      this.series,
      final List<CommonSummary>? variants,
      final List<CommonSummary>? collections,
      final List<CommonSummary>? collectedIssues,
      final List<ComicDateDto>? dates,
      final List<ComicPriceDto>? prices,
      this.thumbnail,
      final List<ImageDto>? images,
      this.creators,
      this.characters,
      this.stories,
      this.events})
      : _textObjects = textObjects,
        _urls = urls,
        _variants = variants,
        _collections = collections,
        _collectedIssues = collectedIssues,
        _dates = dates,
        _prices = prices,
        _images = images,
        super._();

  factory _$_ComicDto.fromJson(Map<String, dynamic> json) =>
      _$$_ComicDtoFromJson(json);

  @override
  final int? id;
  @override
  final int? digitalId;
  @override
  final String? title;
  @override
  final double? issueNumber;
  @override
  final String? variantDescription;
  @override
  final String? description;
  @override
  final DateTime? modified;
  @override
  final String? isbn;
  @override
  final String? upc;
  @override
  final String? diamondCode;
  @override
  final String? ean;
  @override
  final String? issn;
  @override
  final String? format;
  @override
  final int? pageCount;
  final List<TextObjectDto>? _textObjects;
  @override
  List<TextObjectDto>? get textObjects {
    final value = _textObjects;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  final CommonSummary? series;
  final List<CommonSummary>? _variants;
  @override
  List<CommonSummary>? get variants {
    final value = _variants;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CommonSummary>? _collections;
  @override
  List<CommonSummary>? get collections {
    final value = _collections;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CommonSummary>? _collectedIssues;
  @override
  List<CommonSummary>? get collectedIssues {
    final value = _collectedIssues;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ComicDateDto>? _dates;
  @override
  List<ComicDateDto>? get dates {
    final value = _dates;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ComicPriceDto>? _prices;
  @override
  List<ComicPriceDto>? get prices {
    final value = _prices;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ImageDto? thumbnail;
  final List<ImageDto>? _images;
  @override
  List<ImageDto>? get images {
    final value = _images;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final GenericList<CommonSummary>? creators;
  @override
  final GenericList<CommonSummary>? characters;
  @override
  final GenericList<StorySummaryDto>? stories;
  @override
  final GenericList<CommonSummary>? events;

  @override
  String toString() {
    return 'ComicDto(id: $id, digitalId: $digitalId, title: $title, issueNumber: $issueNumber, variantDescription: $variantDescription, description: $description, modified: $modified, isbn: $isbn, upc: $upc, diamondCode: $diamondCode, ean: $ean, issn: $issn, format: $format, pageCount: $pageCount, textObjects: $textObjects, resourceURI: $resourceURI, urls: $urls, series: $series, variants: $variants, collections: $collections, collectedIssues: $collectedIssues, dates: $dates, prices: $prices, thumbnail: $thumbnail, images: $images, creators: $creators, characters: $characters, stories: $stories, events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.digitalId, digitalId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.issueNumber, issueNumber) &&
            const DeepCollectionEquality()
                .equals(other.variantDescription, variantDescription) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.modified, modified) &&
            const DeepCollectionEquality().equals(other.isbn, isbn) &&
            const DeepCollectionEquality().equals(other.upc, upc) &&
            const DeepCollectionEquality()
                .equals(other.diamondCode, diamondCode) &&
            const DeepCollectionEquality().equals(other.ean, ean) &&
            const DeepCollectionEquality().equals(other.issn, issn) &&
            const DeepCollectionEquality().equals(other.format, format) &&
            const DeepCollectionEquality().equals(other.pageCount, pageCount) &&
            const DeepCollectionEquality()
                .equals(other._textObjects, _textObjects) &&
            const DeepCollectionEquality()
                .equals(other.resourceURI, resourceURI) &&
            const DeepCollectionEquality().equals(other._urls, _urls) &&
            const DeepCollectionEquality().equals(other.series, series) &&
            const DeepCollectionEquality().equals(other._variants, _variants) &&
            const DeepCollectionEquality()
                .equals(other._collections, _collections) &&
            const DeepCollectionEquality()
                .equals(other._collectedIssues, _collectedIssues) &&
            const DeepCollectionEquality().equals(other._dates, _dates) &&
            const DeepCollectionEquality().equals(other._prices, _prices) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other.creators, creators) &&
            const DeepCollectionEquality()
                .equals(other.characters, characters) &&
            const DeepCollectionEquality().equals(other.stories, stories) &&
            const DeepCollectionEquality().equals(other.events, events));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(digitalId),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(issueNumber),
        const DeepCollectionEquality().hash(variantDescription),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(modified),
        const DeepCollectionEquality().hash(isbn),
        const DeepCollectionEquality().hash(upc),
        const DeepCollectionEquality().hash(diamondCode),
        const DeepCollectionEquality().hash(ean),
        const DeepCollectionEquality().hash(issn),
        const DeepCollectionEquality().hash(format),
        const DeepCollectionEquality().hash(pageCount),
        const DeepCollectionEquality().hash(_textObjects),
        const DeepCollectionEquality().hash(resourceURI),
        const DeepCollectionEquality().hash(_urls),
        const DeepCollectionEquality().hash(series),
        const DeepCollectionEquality().hash(_variants),
        const DeepCollectionEquality().hash(_collections),
        const DeepCollectionEquality().hash(_collectedIssues),
        const DeepCollectionEquality().hash(_dates),
        const DeepCollectionEquality().hash(_prices),
        const DeepCollectionEquality().hash(thumbnail),
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(creators),
        const DeepCollectionEquality().hash(characters),
        const DeepCollectionEquality().hash(stories),
        const DeepCollectionEquality().hash(events)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_ComicDtoCopyWith<_$_ComicDto> get copyWith =>
      __$$_ComicDtoCopyWithImpl<_$_ComicDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicDtoToJson(this);
  }
}

abstract class _ComicDto extends ComicDto {
  const factory _ComicDto(
      {final int? id,
      final int? digitalId,
      final String? title,
      final double? issueNumber,
      final String? variantDescription,
      final String? description,
      final DateTime? modified,
      final String? isbn,
      final String? upc,
      final String? diamondCode,
      final String? ean,
      final String? issn,
      final String? format,
      final int? pageCount,
      final List<TextObjectDto>? textObjects,
      final String? resourceURI,
      final List<UrlDto>? urls,
      final CommonSummary? series,
      final List<CommonSummary>? variants,
      final List<CommonSummary>? collections,
      final List<CommonSummary>? collectedIssues,
      final List<ComicDateDto>? dates,
      final List<ComicPriceDto>? prices,
      final ImageDto? thumbnail,
      final List<ImageDto>? images,
      final GenericList<CommonSummary>? creators,
      final GenericList<CommonSummary>? characters,
      final GenericList<StorySummaryDto>? stories,
      final GenericList<CommonSummary>? events}) = _$_ComicDto;
  const _ComicDto._() : super._();

  factory _ComicDto.fromJson(Map<String, dynamic> json) = _$_ComicDto.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  int? get digitalId => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  double? get issueNumber => throw _privateConstructorUsedError;
  @override
  String? get variantDescription => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  DateTime? get modified => throw _privateConstructorUsedError;
  @override
  String? get isbn => throw _privateConstructorUsedError;
  @override
  String? get upc => throw _privateConstructorUsedError;
  @override
  String? get diamondCode => throw _privateConstructorUsedError;
  @override
  String? get ean => throw _privateConstructorUsedError;
  @override
  String? get issn => throw _privateConstructorUsedError;
  @override
  String? get format => throw _privateConstructorUsedError;
  @override
  int? get pageCount => throw _privateConstructorUsedError;
  @override
  List<TextObjectDto>? get textObjects => throw _privateConstructorUsedError;
  @override
  String? get resourceURI => throw _privateConstructorUsedError;
  @override
  List<UrlDto>? get urls => throw _privateConstructorUsedError;
  @override
  CommonSummary? get series => throw _privateConstructorUsedError;
  @override
  List<CommonSummary>? get variants => throw _privateConstructorUsedError;
  @override
  List<CommonSummary>? get collections => throw _privateConstructorUsedError;
  @override
  List<CommonSummary>? get collectedIssues =>
      throw _privateConstructorUsedError;
  @override
  List<ComicDateDto>? get dates => throw _privateConstructorUsedError;
  @override
  List<ComicPriceDto>? get prices => throw _privateConstructorUsedError;
  @override
  ImageDto? get thumbnail => throw _privateConstructorUsedError;
  @override
  List<ImageDto>? get images => throw _privateConstructorUsedError;
  @override
  GenericList<CommonSummary>? get creators =>
      throw _privateConstructorUsedError;
  @override
  GenericList<CommonSummary>? get characters =>
      throw _privateConstructorUsedError;
  @override
  GenericList<StorySummaryDto>? get stories =>
      throw _privateConstructorUsedError;
  @override
  GenericList<CommonSummary>? get events => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ComicDtoCopyWith<_$_ComicDto> get copyWith =>
      throw _privateConstructorUsedError;
}

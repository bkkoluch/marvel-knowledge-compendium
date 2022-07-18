// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Comic _$ComicFromJson(Map<String, dynamic> json) {
  return _Comic.fromJson(json);
}

/// @nodoc
mixin _$Comic {
  int? get id => throw _privateConstructorUsedError;
  int? get digitalId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get name => throw _privateConstructorUsedError;
  double? get issueNumber => throw _privateConstructorUsedError;
  String? get variantDescription => throw _privateConstructorUsedError;
  DateTime? get modified => throw _privateConstructorUsedError;
  String? get isbn => throw _privateConstructorUsedError;
  String? get upc => throw _privateConstructorUsedError;
  String? get diamondCode => throw _privateConstructorUsedError;
  String? get ean => throw _privateConstructorUsedError;
  String? get issn => throw _privateConstructorUsedError;
  String? get format => throw _privateConstructorUsedError;
  int? get pageCount => throw _privateConstructorUsedError;
  List<TextObject>? get textObjects => throw _privateConstructorUsedError;
  List<CommonSummary>? get variants => throw _privateConstructorUsedError;
  List<CommonSummary>? get collections => throw _privateConstructorUsedError;
  List<CommonSummary>? get collectedIssues =>
      throw _privateConstructorUsedError;
  List<ComicDate>? get dates => throw _privateConstructorUsedError;
  List<ComicPrice>? get prices => throw _privateConstructorUsedError;
  Image? get thumbnail => throw _privateConstructorUsedError;
  List<Image>? get images => throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get creators =>
      throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get characters =>
      throw _privateConstructorUsedError;
  GenericList<StorySummary>? get stories => throw _privateConstructorUsedError;
  GenericList<CommonSummary>? get events => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicCopyWith<Comic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicCopyWith<$Res> {
  factory $ComicCopyWith(Comic value, $Res Function(Comic) then) =
      _$ComicCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? digitalId,
      @JsonKey(name: 'title') String? name,
      double? issueNumber,
      String? variantDescription,
      DateTime? modified,
      String? isbn,
      String? upc,
      String? diamondCode,
      String? ean,
      String? issn,
      String? format,
      int? pageCount,
      List<TextObject>? textObjects,
      List<CommonSummary>? variants,
      List<CommonSummary>? collections,
      List<CommonSummary>? collectedIssues,
      List<ComicDate>? dates,
      List<ComicPrice>? prices,
      Image? thumbnail,
      List<Image>? images,
      GenericList<CommonSummary>? creators,
      GenericList<CommonSummary>? characters,
      GenericList<StorySummary>? stories,
      GenericList<CommonSummary>? events});

  $ImageCopyWith<$Res>? get thumbnail;
  $GenericListCopyWith<CommonSummary, $Res>? get creators;
  $GenericListCopyWith<CommonSummary, $Res>? get characters;
  $GenericListCopyWith<StorySummary, $Res>? get stories;
  $GenericListCopyWith<CommonSummary, $Res>? get events;
}

/// @nodoc
class _$ComicCopyWithImpl<$Res> implements $ComicCopyWith<$Res> {
  _$ComicCopyWithImpl(this._value, this._then);

  final Comic _value;
  // ignore: unused_field
  final $Res Function(Comic) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? digitalId = freezed,
    Object? name = freezed,
    Object? issueNumber = freezed,
    Object? variantDescription = freezed,
    Object? modified = freezed,
    Object? isbn = freezed,
    Object? upc = freezed,
    Object? diamondCode = freezed,
    Object? ean = freezed,
    Object? issn = freezed,
    Object? format = freezed,
    Object? pageCount = freezed,
    Object? textObjects = freezed,
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
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      issueNumber: issueNumber == freezed
          ? _value.issueNumber
          : issueNumber // ignore: cast_nullable_to_non_nullable
              as double?,
      variantDescription: variantDescription == freezed
          ? _value.variantDescription
          : variantDescription // ignore: cast_nullable_to_non_nullable
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
              as List<TextObject>?,
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
              as List<ComicDate>?,
      prices: prices == freezed
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<ComicPrice>?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Image?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
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
              as GenericList<StorySummary>?,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
    ));
  }

  @override
  $ImageCopyWith<$Res>? get thumbnail {
    if (_value.thumbnail == null) {
      return null;
    }

    return $ImageCopyWith<$Res>(_value.thumbnail!, (value) {
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
}

/// @nodoc
abstract class _$$_ComicCopyWith<$Res> implements $ComicCopyWith<$Res> {
  factory _$$_ComicCopyWith(_$_Comic value, $Res Function(_$_Comic) then) =
      __$$_ComicCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? digitalId,
      @JsonKey(name: 'title') String? name,
      double? issueNumber,
      String? variantDescription,
      DateTime? modified,
      String? isbn,
      String? upc,
      String? diamondCode,
      String? ean,
      String? issn,
      String? format,
      int? pageCount,
      List<TextObject>? textObjects,
      List<CommonSummary>? variants,
      List<CommonSummary>? collections,
      List<CommonSummary>? collectedIssues,
      List<ComicDate>? dates,
      List<ComicPrice>? prices,
      Image? thumbnail,
      List<Image>? images,
      GenericList<CommonSummary>? creators,
      GenericList<CommonSummary>? characters,
      GenericList<StorySummary>? stories,
      GenericList<CommonSummary>? events});

  @override
  $ImageCopyWith<$Res>? get thumbnail;
  @override
  $GenericListCopyWith<CommonSummary, $Res>? get creators;
  @override
  $GenericListCopyWith<CommonSummary, $Res>? get characters;
  @override
  $GenericListCopyWith<StorySummary, $Res>? get stories;
  @override
  $GenericListCopyWith<CommonSummary, $Res>? get events;
}

/// @nodoc
class __$$_ComicCopyWithImpl<$Res> extends _$ComicCopyWithImpl<$Res>
    implements _$$_ComicCopyWith<$Res> {
  __$$_ComicCopyWithImpl(_$_Comic _value, $Res Function(_$_Comic) _then)
      : super(_value, (v) => _then(v as _$_Comic));

  @override
  _$_Comic get _value => super._value as _$_Comic;

  @override
  $Res call({
    Object? id = freezed,
    Object? digitalId = freezed,
    Object? name = freezed,
    Object? issueNumber = freezed,
    Object? variantDescription = freezed,
    Object? modified = freezed,
    Object? isbn = freezed,
    Object? upc = freezed,
    Object? diamondCode = freezed,
    Object? ean = freezed,
    Object? issn = freezed,
    Object? format = freezed,
    Object? pageCount = freezed,
    Object? textObjects = freezed,
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
    return _then(_$_Comic(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      digitalId: digitalId == freezed
          ? _value.digitalId
          : digitalId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      issueNumber: issueNumber == freezed
          ? _value.issueNumber
          : issueNumber // ignore: cast_nullable_to_non_nullable
              as double?,
      variantDescription: variantDescription == freezed
          ? _value.variantDescription
          : variantDescription // ignore: cast_nullable_to_non_nullable
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
              as List<TextObject>?,
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
              as List<ComicDate>?,
      prices: prices == freezed
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<ComicPrice>?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Image?,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
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
              as GenericList<StorySummary>?,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as GenericList<CommonSummary>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Comic extends _Comic {
  const _$_Comic(
      {this.id,
      this.digitalId,
      @JsonKey(name: 'title') this.name,
      this.issueNumber,
      this.variantDescription,
      this.modified,
      this.isbn,
      this.upc,
      this.diamondCode,
      this.ean,
      this.issn,
      this.format,
      this.pageCount,
      final List<TextObject>? textObjects,
      final List<CommonSummary>? variants,
      final List<CommonSummary>? collections,
      final List<CommonSummary>? collectedIssues,
      final List<ComicDate>? dates,
      final List<ComicPrice>? prices,
      this.thumbnail,
      final List<Image>? images,
      this.creators,
      this.characters,
      this.stories,
      this.events})
      : _textObjects = textObjects,
        _variants = variants,
        _collections = collections,
        _collectedIssues = collectedIssues,
        _dates = dates,
        _prices = prices,
        _images = images,
        super._();

  factory _$_Comic.fromJson(Map<String, dynamic> json) =>
      _$$_ComicFromJson(json);

  @override
  final int? id;
  @override
  final int? digitalId;
  @override
  @JsonKey(name: 'title')
  final String? name;
  @override
  final double? issueNumber;
  @override
  final String? variantDescription;
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
  final List<TextObject>? _textObjects;
  @override
  List<TextObject>? get textObjects {
    final value = _textObjects;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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

  final List<ComicDate>? _dates;
  @override
  List<ComicDate>? get dates {
    final value = _dates;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ComicPrice>? _prices;
  @override
  List<ComicPrice>? get prices {
    final value = _prices;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Image? thumbnail;
  final List<Image>? _images;
  @override
  List<Image>? get images {
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
  final GenericList<StorySummary>? stories;
  @override
  final GenericList<CommonSummary>? events;

  @override
  String toString() {
    return 'Comic(id: $id, digitalId: $digitalId, name: $name, issueNumber: $issueNumber, variantDescription: $variantDescription, modified: $modified, isbn: $isbn, upc: $upc, diamondCode: $diamondCode, ean: $ean, issn: $issn, format: $format, pageCount: $pageCount, textObjects: $textObjects, variants: $variants, collections: $collections, collectedIssues: $collectedIssues, dates: $dates, prices: $prices, thumbnail: $thumbnail, images: $images, creators: $creators, characters: $characters, stories: $stories, events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Comic &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.digitalId, digitalId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.issueNumber, issueNumber) &&
            const DeepCollectionEquality()
                .equals(other.variantDescription, variantDescription) &&
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
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(issueNumber),
        const DeepCollectionEquality().hash(variantDescription),
        const DeepCollectionEquality().hash(modified),
        const DeepCollectionEquality().hash(isbn),
        const DeepCollectionEquality().hash(upc),
        const DeepCollectionEquality().hash(diamondCode),
        const DeepCollectionEquality().hash(ean),
        const DeepCollectionEquality().hash(issn),
        const DeepCollectionEquality().hash(format),
        const DeepCollectionEquality().hash(pageCount),
        const DeepCollectionEquality().hash(_textObjects),
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
  _$$_ComicCopyWith<_$_Comic> get copyWith =>
      __$$_ComicCopyWithImpl<_$_Comic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicToJson(this);
  }
}

abstract class _Comic extends Comic {
  const factory _Comic(
      {final int? id,
      final int? digitalId,
      @JsonKey(name: 'title') final String? name,
      final double? issueNumber,
      final String? variantDescription,
      final DateTime? modified,
      final String? isbn,
      final String? upc,
      final String? diamondCode,
      final String? ean,
      final String? issn,
      final String? format,
      final int? pageCount,
      final List<TextObject>? textObjects,
      final List<CommonSummary>? variants,
      final List<CommonSummary>? collections,
      final List<CommonSummary>? collectedIssues,
      final List<ComicDate>? dates,
      final List<ComicPrice>? prices,
      final Image? thumbnail,
      final List<Image>? images,
      final GenericList<CommonSummary>? creators,
      final GenericList<CommonSummary>? characters,
      final GenericList<StorySummary>? stories,
      final GenericList<CommonSummary>? events}) = _$_Comic;
  const _Comic._() : super._();

  factory _Comic.fromJson(Map<String, dynamic> json) = _$_Comic.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  int? get digitalId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'title')
  String? get name => throw _privateConstructorUsedError;
  @override
  double? get issueNumber => throw _privateConstructorUsedError;
  @override
  String? get variantDescription => throw _privateConstructorUsedError;
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
  List<TextObject>? get textObjects => throw _privateConstructorUsedError;
  @override
  List<CommonSummary>? get variants => throw _privateConstructorUsedError;
  @override
  List<CommonSummary>? get collections => throw _privateConstructorUsedError;
  @override
  List<CommonSummary>? get collectedIssues =>
      throw _privateConstructorUsedError;
  @override
  List<ComicDate>? get dates => throw _privateConstructorUsedError;
  @override
  List<ComicPrice>? get prices => throw _privateConstructorUsedError;
  @override
  Image? get thumbnail => throw _privateConstructorUsedError;
  @override
  List<Image>? get images => throw _privateConstructorUsedError;
  @override
  GenericList<CommonSummary>? get creators =>
      throw _privateConstructorUsedError;
  @override
  GenericList<CommonSummary>? get characters =>
      throw _privateConstructorUsedError;
  @override
  GenericList<StorySummary>? get stories => throw _privateConstructorUsedError;
  @override
  GenericList<CommonSummary>? get events => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ComicCopyWith<_$_Comic> get copyWith =>
      throw _privateConstructorUsedError;
}

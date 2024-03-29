// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComicDto _$$_ComicDtoFromJson(Map<String, dynamic> json) => _$_ComicDto(
      id: json['id'] as int?,
      digitalId: json['digitalId'] as int?,
      title: json['title'] as String?,
      issueNumber: (json['issueNumber'] as num?)?.toDouble(),
      variantDescription: json['variantDescription'] as String?,
      description: json['description'] as String?,
      modified: json['modified'] == null
          ? null
          : DateTime.parse(json['modified'] as String),
      isbn: json['isbn'] as String?,
      upc: json['upc'] as String?,
      diamondCode: json['diamondCode'] as String?,
      ean: json['ean'] as String?,
      issn: json['issn'] as String?,
      format: json['format'] as String?,
      pageCount: json['pageCount'] as int?,
      textObjects: (json['textObjects'] as List<dynamic>?)
          ?.map((e) => TextObjectDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      resourceURI: json['resourceURI'] as String?,
      urls: (json['urls'] as List<dynamic>?)
          ?.map((e) => UrlDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      series: json['series'] == null
          ? null
          : CommonSummary.fromJson(json['series'] as Map<String, dynamic>),
      variants: (json['variants'] as List<dynamic>?)
          ?.map((e) => CommonSummary.fromJson(e as Map<String, dynamic>))
          .toList(),
      collections: (json['collections'] as List<dynamic>?)
          ?.map((e) => CommonSummary.fromJson(e as Map<String, dynamic>))
          .toList(),
      collectedIssues: (json['collectedIssues'] as List<dynamic>?)
          ?.map((e) => CommonSummary.fromJson(e as Map<String, dynamic>))
          .toList(),
      dates: (json['dates'] as List<dynamic>?)
          ?.map((e) => ComicDateDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      prices: (json['prices'] as List<dynamic>?)
          ?.map((e) => ComicPriceDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      thumbnail: json['thumbnail'] == null
          ? null
          : ImageDto.fromJson(json['thumbnail'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      creators: json['creators'] == null
          ? null
          : GenericList<CommonSummary>.fromJson(
              json['creators'] as Map<String, dynamic>,
              (value) => CommonSummary.fromJson(value as Map<String, dynamic>)),
      characters: json['characters'] == null
          ? null
          : GenericList<CommonSummary>.fromJson(
              json['characters'] as Map<String, dynamic>,
              (value) => CommonSummary.fromJson(value as Map<String, dynamic>)),
      stories: json['stories'] == null
          ? null
          : GenericList<StorySummaryDto>.fromJson(
              json['stories'] as Map<String, dynamic>,
              (value) =>
                  StorySummaryDto.fromJson(value as Map<String, dynamic>)),
      events: json['events'] == null
          ? null
          : GenericList<CommonSummary>.fromJson(
              json['events'] as Map<String, dynamic>,
              (value) => CommonSummary.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$_ComicDtoToJson(_$_ComicDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'digitalId': instance.digitalId,
      'title': instance.title,
      'issueNumber': instance.issueNumber,
      'variantDescription': instance.variantDescription,
      'description': instance.description,
      'modified': instance.modified?.toIso8601String(),
      'isbn': instance.isbn,
      'upc': instance.upc,
      'diamondCode': instance.diamondCode,
      'ean': instance.ean,
      'issn': instance.issn,
      'format': instance.format,
      'pageCount': instance.pageCount,
      'textObjects': instance.textObjects,
      'resourceURI': instance.resourceURI,
      'urls': instance.urls,
      'series': instance.series,
      'variants': instance.variants,
      'collections': instance.collections,
      'collectedIssues': instance.collectedIssues,
      'dates': instance.dates,
      'prices': instance.prices,
      'thumbnail': instance.thumbnail,
      'images': instance.images,
      'creators': instance.creators?.toJson(
        (value) => value,
      ),
      'characters': instance.characters?.toJson(
        (value) => value,
      ),
      'stories': instance.stories?.toJson(
        (value) => value,
      ),
      'events': instance.events?.toJson(
        (value) => value,
      ),
    };

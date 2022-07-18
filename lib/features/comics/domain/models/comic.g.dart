// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comic _$$_ComicFromJson(Map<String, dynamic> json) => _$_Comic(
      id: json['id'] as int?,
      digitalId: json['digitalId'] as int?,
      name: json['title'] as String?,
      issueNumber: (json['issueNumber'] as num?)?.toDouble(),
      variantDescription: json['variantDescription'] as String?,
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
          ?.map((e) => TextObject.fromJson(e as Map<String, dynamic>))
          .toList(),
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
          ?.map((e) => ComicDate.fromJson(e as Map<String, dynamic>))
          .toList(),
      prices: (json['prices'] as List<dynamic>?)
          ?.map((e) => ComicPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
      thumbnail: json['thumbnail'] == null
          ? null
          : Image.fromJson(json['thumbnail'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
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
          : GenericList<StorySummary>.fromJson(
              json['stories'] as Map<String, dynamic>,
              (value) => StorySummary.fromJson(value as Map<String, dynamic>)),
      events: json['events'] == null
          ? null
          : GenericList<CommonSummary>.fromJson(
              json['events'] as Map<String, dynamic>,
              (value) => CommonSummary.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$_ComicToJson(_$_Comic instance) => <String, dynamic>{
      'id': instance.id,
      'digitalId': instance.digitalId,
      'title': instance.name,
      'issueNumber': instance.issueNumber,
      'variantDescription': instance.variantDescription,
      'modified': instance.modified?.toIso8601String(),
      'isbn': instance.isbn,
      'upc': instance.upc,
      'diamondCode': instance.diamondCode,
      'ean': instance.ean,
      'issn': instance.issn,
      'format': instance.format,
      'pageCount': instance.pageCount,
      'textObjects': instance.textObjects,
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComicPrice _$$_ComicPriceFromJson(Map<String, dynamic> json) =>
    _$_ComicPrice(
      type: json['type'] as String?,
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ComicPriceToJson(_$_ComicPrice instance) =>
    <String, dynamic>{
      'type': instance.type,
      'price': instance.price,
    };

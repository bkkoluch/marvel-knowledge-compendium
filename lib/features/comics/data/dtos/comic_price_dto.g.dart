// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_price_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComicPriceDto _$$_ComicPriceDtoFromJson(Map<String, dynamic> json) =>
    _$_ComicPriceDto(
      type: json['type'] as String?,
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ComicPriceDtoToJson(_$_ComicPriceDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'price': instance.price,
    };

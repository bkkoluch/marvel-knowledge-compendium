import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/dtos/comic_price_dto.dart';

part 'comic_price.freezed.dart';
part 'comic_price.g.dart';

@freezed
class ComicPrice with _$ComicPrice {
  const ComicPrice._();

  const factory ComicPrice({
    String? type,
    double? price,
  }) = _ComicPrice;

  factory ComicPrice.fromJson(Map<String, dynamic> json) => _$ComicPriceFromJson(json);

  factory ComicPrice.fromDto(ComicPriceDto dto) => ComicPrice(type: dto.type, price: dto.price);
}

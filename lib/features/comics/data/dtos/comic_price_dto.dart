import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic_price_dto.freezed.dart';
part 'comic_price_dto.g.dart';

@freezed
class ComicPriceDto with _$ComicPriceDto {
  const ComicPriceDto._();

  const factory ComicPriceDto({
    String? type,
    double? price,
  }) = _ComicPriceDto;

  factory ComicPriceDto.fromJson(Map<String, dynamic> json) => _$ComicPriceDtoFromJson(json);
}

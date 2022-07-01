import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/shared/url_dto.dart';

part 'url.freezed.dart';
part 'url.g.dart';

@freezed
class Url with _$Url {
  const Url._();

  const factory Url({
    String? type,
    String? url,
  }) = _Url;

  factory Url.fromJson(Map<String, dynamic> json) => _$UrlFromJson(json);

  factory Url.fromDto(UrlDto dto) => Url(type: dto.type, url: dto.url);
}

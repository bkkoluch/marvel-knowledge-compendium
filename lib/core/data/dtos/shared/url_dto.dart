import 'package:freezed_annotation/freezed_annotation.dart';

part 'url_dto.freezed.dart';
part 'url_dto.g.dart';

@freezed
class UrlDto with _$UrlDto {
  const UrlDto._();

  const factory UrlDto({
    String? type,
    String? url,
  }) = _UrlDto;

  factory UrlDto.fromJson(Map<String, dynamic> json) => _$UrlDtoFromJson(json);
}

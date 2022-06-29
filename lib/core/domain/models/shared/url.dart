import 'package:freezed_annotation/freezed_annotation.dart';

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
}

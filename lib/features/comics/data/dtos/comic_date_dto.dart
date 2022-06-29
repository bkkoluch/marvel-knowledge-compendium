import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic_date_dto.freezed.dart';
part 'comic_date_dto.g.dart';

@freezed
class ComicDateDto with _$ComicDateDto {
  const ComicDateDto._();

  const factory ComicDateDto({
    String? type,
    DateTime? date,
  }) = _ComicDateDto;

  factory ComicDateDto.fromJson(Map<String, dynamic> json) => _$ComicDateDtoFromJson(json);
}

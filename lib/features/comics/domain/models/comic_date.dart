import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/dtos/comic_date_dto.dart';

part 'comic_date.freezed.dart';
part 'comic_date.g.dart';

@freezed
class ComicDate with _$ComicDate {
  const ComicDate._();

  const factory ComicDate({
    String? type,
    DateTime? date,
  }) = _ComicDate;

  factory ComicDate.fromJson(Map<String, dynamic> json) => _$ComicDateFromJson(json);

  factory ComicDate.fromDto(ComicDateDto dto) => ComicDate(type: dto.type, date: dto.date);
}

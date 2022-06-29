import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_summary_dto.freezed.dart';
part 'story_summary_dto.g.dart';

@freezed
class StorySummaryDto with _$StorySummaryDto {
  const StorySummaryDto._();

  const factory StorySummaryDto({
    String? resourceURI,
    String? name,
    String? type,
  }) = _StorySummaryDto;

  factory StorySummaryDto.fromJson(Map<String, dynamic> json) => _$StorySummaryDtoFromJson(json);
}

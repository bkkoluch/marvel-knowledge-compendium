import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_summary.freezed.dart';
part 'story_summary.g.dart';

@freezed
class StorySummary with _$StorySummary {
  const StorySummary._();

  const factory StorySummary({
    String? resourceURI,
    String? name,
    String? type,
  }) = _StorySummary;

  factory StorySummary.fromJson(Map<String, dynamic> json) => _$StorySummaryFromJson(json);
}

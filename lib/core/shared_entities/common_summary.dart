import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_summary.freezed.dart';
part 'common_summary.g.dart';

@freezed
class CommonSummary with _$CommonSummary {
  const CommonSummary._();

  const factory CommonSummary({
    String? resourceURI,
    String? name,
  }) = _CommonSummary;

  factory CommonSummary.fromJson(Map<String, dynamic> json) => _$CommonSummaryFromJson(json);
}

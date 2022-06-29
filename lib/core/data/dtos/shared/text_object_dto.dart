import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_object_dto.freezed.dart';
part 'text_object_dto.g.dart';

@freezed
class TextObjectDto with _$TextObjectDto {
  const TextObjectDto._();

  const factory TextObjectDto({
    String? type,
    String? language,
    String? text,
  }) = _TextObjectDto;

  factory TextObjectDto.fromJson(Map<String, dynamic> json) => _$TextObjectDtoFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/shared/text_object_dto.dart';

part 'text_object.freezed.dart';
part 'text_object.g.dart';

@freezed
class TextObject with _$TextObject {
  const TextObject._();

  const factory TextObject({
    String? type,
    String? language,
    String? text,
  }) = _TextObject;

  factory TextObject.fromJson(Map<String, dynamic> json) => _$TextObjectFromJson(json);

  factory TextObject.fromDto(TextObjectDto dto) => TextObject(type: dto.type, language: dto.language, text: dto.text);
}

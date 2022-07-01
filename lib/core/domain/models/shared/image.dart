import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_knowledge_compendium/core/data/dtos/shared/image_dto.dart';

part 'image.freezed.dart';
part 'image.g.dart';

@freezed
class Image with _$Image {
  const Image._();

  const factory Image({
    String? path,
    String? extension,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  factory Image.fromDto(ImageDto dto) => Image(path: dto.path, extension: dto.extension);

  String? get properImagePath => (path != null && extension != null) ? '$path.$extension' : null;
}

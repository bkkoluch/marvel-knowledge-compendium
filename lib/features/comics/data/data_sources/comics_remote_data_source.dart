import 'package:marvel_knowledge_compendium/features/comics/data/dtos/comic_data_wrapper_dto.dart';

abstract class ComicsRemoteDataSource {
  Future<ComicDataWrapperDto> getComicsList({int? offset});
}

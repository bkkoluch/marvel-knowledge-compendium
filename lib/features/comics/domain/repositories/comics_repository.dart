import 'package:dartz/dartz.dart';
import 'package:marvel_knowledge_compendium/core/error/failures.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/dtos/comic_data_wrapper_dto.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic_data_container.dart';

abstract class ComicsRepository {
  Future<Either<Failure, ComicDataWrapperDto>> getComicsList({int? offset});

  ComicDataContainer? getSavedComics();

  Future<void> saveComics(ComicDataContainer comicDataContainer);
}

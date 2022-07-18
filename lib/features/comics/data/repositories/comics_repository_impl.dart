import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_knowledge_compendium/core/error/exceptions.dart';
import 'package:marvel_knowledge_compendium/core/error/failures.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/data_sources/comics_local_data_source.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/data_sources/comics_remote_data_source.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/dtos/comic_data_wrapper_dto.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic_data_container.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/repositories/comics_repository.dart';

@Injectable(as: ComicsRepository)
class ComicsRepositoryImpl implements ComicsRepository {
  final ComicsLocalDataSource comicsLocalDataSource;
  final ComicsRemoteDataSource comicsRemoteDataSource;

  const ComicsRepositoryImpl(this.comicsLocalDataSource, this.comicsRemoteDataSource);

  @override
  Future<Either<Failure, ComicDataWrapperDto>> getComicsList({int? offset}) async {
    try {
      return Right(await comicsRemoteDataSource.getComicsList(offset: offset));
    } on ServerException catch (error) {
      return Left(ServerFailure(error.description));
    } catch (error) {
      return Left(GenericFailure(error.toString()));
    }
  }

  @override
  ComicDataContainer? getSavedComics() => comicsLocalDataSource.getSavedComics();

  @override
  Future<void> saveComics(ComicDataContainer comicDataContainer) async =>
      await comicsLocalDataSource.saveComics(comicDataContainer);
}

import 'package:dartz/dartz.dart';
import 'package:marvel_knowledge_compendium/core/error/failures.dart';
import 'package:marvel_knowledge_compendium/core/use_cases/use_case.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/dtos/comic_data_wrapper_dto.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic_data_wrapper.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/repositories/comics_repository.dart';

class GetAllComicsUseCase extends UseCase<Future<Either<Failure, ComicDataWrapper>>, int?> {
  final ComicsRepository comicsRepository;

  GetAllComicsUseCase(this.comicsRepository);

  @override
  Future<Either<Failure, ComicDataWrapper>> call([int? offset]) async {
    final result = await comicsRepository.getComicsList(offset: offset);

    return result.fold(
      (Failure failure) => Left(failure),
      (ComicDataWrapperDto comicDataWrapperDto) => Right(ComicDataWrapperExtension.fromDto(comicDataWrapperDto)),
    );
  }
}

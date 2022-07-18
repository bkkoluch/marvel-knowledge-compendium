import 'package:marvel_knowledge_compendium/core/use_cases/use_case.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic_data_container.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/repositories/comics_repository.dart';

class SaveAllComicsUseCase extends UseCase<Future<void>, ComicDataContainer> {
  final ComicsRepository comicsRepository;

  SaveAllComicsUseCase(this.comicsRepository);

  @override
  Future<void> call(ComicDataContainer comicDataContainer) => comicsRepository.saveComics(comicDataContainer);
}

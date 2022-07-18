import 'package:marvel_knowledge_compendium/core/use_cases/use_case.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic_data_container.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/repositories/comics_repository.dart';

class GetSavedComicsUseCase extends UseCase<ComicDataContainer?, NoParams?> {
  final ComicsRepository comicsRepository;

  GetSavedComicsUseCase(this.comicsRepository);

  @override
  ComicDataContainer? call([NoParams? params]) => comicsRepository.getSavedComics();
}

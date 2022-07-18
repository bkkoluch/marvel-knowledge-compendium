import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic_data_container.dart';

abstract class ComicsLocalDataSource {
  Future<void> saveComics(ComicDataContainer comicDataContainer);

  ComicDataContainer? getSavedComics();
}

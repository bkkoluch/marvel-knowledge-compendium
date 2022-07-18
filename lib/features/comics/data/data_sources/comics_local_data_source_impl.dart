import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:marvel_knowledge_compendium/core/utils/shared_prefs_keys.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/data_sources/comics_local_data_source.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic_data_container.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: ComicsLocalDataSource)
class ComicsLocalDataSourceImpl implements ComicsLocalDataSource {
  final SharedPreferences sharedPreferences;

  const ComicsLocalDataSourceImpl(this.sharedPreferences);

  @override
  ComicDataContainer? getSavedComics() {
    final String? savedComicsString = sharedPreferences.getString(SharedPrefsKeys.allComics);
    if (savedComicsString == null) {
      return null;
    } else {
      return ComicDataContainerExtension.fullFromJson(jsonDecode(savedComicsString));
    }
  }

  @override
  Future<void> saveComics(ComicDataContainer comicDataContainer) async {
    await sharedPreferences.setString(
      SharedPrefsKeys.allComics,
      json.encode(ComicDataContainerExtension.fullToJson(comicDataContainer)),
    );
  }
}

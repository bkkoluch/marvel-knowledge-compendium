import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:marvel_knowledge_compendium/core/utils/shared_prefs_keys.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_local_data_source.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_container.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: CharactersLocalDataSource)
class CharactersLocalDataSourceImpl implements CharactersLocalDataSource {
  final SharedPreferences sharedPreferences;

  const CharactersLocalDataSourceImpl(this.sharedPreferences);

  @override
  CharacterDataContainer? getSavedCharacters() {
    final String? savedCharactersString = sharedPreferences.getString(SharedPrefsKeys.allCharacters);
    if (savedCharactersString == null) {
      return null;
    } else {
      return CharacterDataContainerExtension.fullFromJson(jsonDecode(savedCharactersString));
    }
  }

  @override
  Future<void> saveCharacters(CharacterDataContainer characterDataContainer) async {
    await sharedPreferences.setString(
      SharedPrefsKeys.allCharacters,
      json.encode(CharacterDataContainerExtension.fullToJson(characterDataContainer)),
    );
  }
}

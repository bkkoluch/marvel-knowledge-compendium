import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_knowledge_compendium/core/utils/shared_prefs_keys.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_local_data_source.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_local_data_source_impl.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_container.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';
import '../../../../test_json_data.dart';

void main() {
  final SharedPreferences sharedPreferences = MockSharedPreferences();

  final CharactersLocalDataSource charactersLocalDataSource = CharactersLocalDataSourceImpl(sharedPreferences);

  group('getSavedCharacters', () {
    test(
      'should return null if a string saved under the key is null',
      () async {
        // Arrange
        when(() => sharedPreferences.getString(captureAny())).thenAnswer((_) => null);

        // Act
        final result = charactersLocalDataSource.getSavedCharacters();

        // Assert
        verify(() => sharedPreferences.getString(SharedPrefsKeys.allCharacters)).called(1);
        expect(result, null);
      },
    );

    test(
      'should return JSON if a string saved under the key is not null',
      () async {
        // Arrange
        when(() => sharedPreferences.getString(captureAny()))
            .thenAnswer((_) => jsonEncode(tCharacterDataContainerJSON));

        // Act
        final result = charactersLocalDataSource.getSavedCharacters();

        // Assert
        verify(() => sharedPreferences.getString(SharedPrefsKeys.allCharacters)).called(1);
        expect(result, tCharacterDataContainerFromJSON);
      },
    );
  });

  group('saveCharacters', () {
    test(
      'should correctly set the value in SharedPreferences',
      () async {
        // Arrange
        when(() => sharedPreferences.setString(captureAny(), captureAny())).thenAnswer((_) async => true);

        // Act
        await charactersLocalDataSource.saveCharacters(tCharacterDataContainer);

        // Assert
        verify(
          () => sharedPreferences.setString(
            SharedPrefsKeys.allCharacters,
            json.encode(CharacterDataContainerExtension.fullToJson(tCharacterDataContainer)),
          ),
        );
      },
    );
  });
}

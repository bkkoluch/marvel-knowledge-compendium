import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_knowledge_compendium/core/utils/shared_prefs_keys.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/data_sources/comics_local_data_source.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/data_sources/comics_local_data_source_impl.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';
import '../../../../test_json_data.dart';

void main() {
  final SharedPreferences sharedPreferences = MockSharedPreferences();

  final ComicsLocalDataSource comicsLocalDataSource = ComicsLocalDataSourceImpl(sharedPreferences);

  group('getSavedComics', () {
    test(
      'should return null if value saved in SharedPreferences is null',
      () async {
        // Arrange
        when(() => sharedPreferences.getString(captureAny())).thenAnswer((_) => null);

        // Act
        final result = comicsLocalDataSource.getSavedComics();

        // Assert
        expect(result, null);
        verify(() => sharedPreferences.getString(SharedPrefsKeys.allComics)).called(1);
      },
    );

    test(
      'should return ComicDataContainer when value saved in SharedPreferences is not null',
      () async {
        // Arrange
        when(() => sharedPreferences.getString(captureAny())).thenAnswer((_) => jsonEncode(tComicDataContainerDtoJSON));

        // Act
        final result = comicsLocalDataSource.getSavedComics();

        // Assert
        expect(result, tComicDataContainerFromJSON);
        verify(() => sharedPreferences.getString(SharedPrefsKeys.allComics)).called(1);
      },
    );
  });
}

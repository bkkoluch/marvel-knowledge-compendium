import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/repositories/comics_repository.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/use_cases/get_saved_comics_use_case.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final ComicsRepository comicsRepository = MockComicsRepository();

  final GetSavedComicsUseCase getSavedComicsUseCase = GetSavedComicsUseCase(comicsRepository);

  test(
    'should return ComicDataContainer if value returned by Repository is not null',
    () async {
      // Arrange
      when(() => comicsRepository.getSavedComics()).thenAnswer((_) => tComicDataContainer);

      // Act
      final result = getSavedComicsUseCase.call();

      // Assert
      expect(result, tComicDataContainer);
      verify(() => comicsRepository.getSavedComics()).called(1);
    },
  );

  test(
    'should return null if value returned by Repository is null',
    () async {
      // Arrange
      when(() => comicsRepository.getSavedComics()).thenAnswer((_) => null);

      // Act
      final result = getSavedComicsUseCase.call();

      // Assert
      expect(result, null);
      verify(() => comicsRepository.getSavedComics()).called(1);
    },
  );
}

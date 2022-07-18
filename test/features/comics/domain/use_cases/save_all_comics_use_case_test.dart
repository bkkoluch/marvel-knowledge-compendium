import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/repositories/comics_repository.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/use_cases/save_all_comics_use_case.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';
import '../../../../test_setup.dart';

void main() {
  final ComicsRepository comicsRepository = MockComicsRepository();

  final SaveAllComicsUseCase saveAllComicsUseCase = SaveAllComicsUseCase(comicsRepository);

  setUpAll(baseSetup);

  test(
    'should properly propagate the call to repository',
    () async {
      // Arrange
      when(() => comicsRepository.saveComics(captureAny())).thenAnswer((_) async => null);

      // Act
      await saveAllComicsUseCase.call(tComicDataContainer);

      // Assert
      verify(() => comicsRepository.saveComics(tComicDataContainer)).called(1);
    },
  );
}

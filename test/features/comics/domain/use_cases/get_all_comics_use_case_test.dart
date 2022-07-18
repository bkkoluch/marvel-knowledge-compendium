import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/repositories/comics_repository.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/use_cases/get_all_comics_use_case.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final ComicsRepository comicsRepository = MockComicsRepository();

  final GetAllComicsUseCase getAllComicsUseCase = GetAllComicsUseCase(comicsRepository);

  test(
    'should return ComicDataWrapper on a successful call',
    () async {
      // Arrange
      when(() => comicsRepository.getComicsList()).thenAnswer((_) async => Right(tComicDataWrapperDto));

      // Act
      final result = await getAllComicsUseCase.call();

      // Assert
      expect(result, Right(tComicDataWrapper));
      verify(() => comicsRepository.getComicsList()).called(1);
    },
  );

  test(
    'should return Failure on an unsuccessful call',
    () async {
      // Arrange
      when(() => comicsRepository.getComicsList()).thenAnswer((_) async => Left(tServerFailure));

      // Act
      final result = await getAllComicsUseCase.call();

      // Assert
      expect(result, Left(tServerFailure));
      verify(() => comicsRepository.getComicsList()).called(1);
    },
  );

  test(
    'should properly handle a call with offset passed',
    () async {
      // Arrange
      when(() => comicsRepository.getComicsList(offset: any(named: 'offset')))
          .thenAnswer((_) async => Right(tComicDataWrapperDto));

      // Act
      await getAllComicsUseCase.call(1);

      // Assert
      verify(() => comicsRepository.getComicsList(offset: 1)).called(1);
    },
  );
}

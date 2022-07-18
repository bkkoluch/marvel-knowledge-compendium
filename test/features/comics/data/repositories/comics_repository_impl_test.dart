import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/data_sources/comics_local_data_source.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/data_sources/comics_remote_data_source.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/repositories/comics_repository_impl.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/repositories/comics_repository.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';
import '../../../../test_setup.dart';

void main() {
  final ComicsRemoteDataSource comicsRemoteDataSource = MockComicsRemoteDataSource();
  final ComicsLocalDataSource comicsLocalDataSource = MockComicsLocalDataSource();

  final ComicsRepository comicsRepository = ComicsRepositoryImpl(comicsLocalDataSource, comicsRemoteDataSource);

  setUpAll(baseSetup);

  group('getComicsList', () {
    test(
      'should return ComicDataWrapperDto on a correct call',
      () async {
        // Arrange
        when(() => comicsRemoteDataSource.getComicsList()).thenAnswer((_) async => tComicDataWrapperDto);

        // Act
        final result = await comicsRepository.getComicsList();

        // Assert
        expect(result, Right(tComicDataWrapperDto));
        verify(() => comicsRemoteDataSource.getComicsList()).called(1);
        verifyZeroInteractions(comicsLocalDataSource);
      },
    );

    test(
      'should correctly make a call with offset passed',
      () async {
        // Arrange
        when(() => comicsRemoteDataSource.getComicsList(offset: any(named: 'offset')))
            .thenAnswer((_) async => tComicDataWrapperDto);

        // Act
        await comicsRepository.getComicsList(offset: 1);

        // Assert
        verify(() => comicsRemoteDataSource.getComicsList(offset: 1)).called(1);
        verifyZeroInteractions(comicsLocalDataSource);
      },
    );

    test(
      'should return ServerFailure when RemoteDataSource throws a ServerException',
      () async {
        // Arrange
        when(() => comicsRemoteDataSource.getComicsList()).thenThrow(tServerException);

        // Act
        final result = await comicsRepository.getComicsList();

        // Assert
        expect(result, Left(tServerFailure));
        verify(() => comicsRemoteDataSource.getComicsList()).called(1);
        verifyZeroInteractions(comicsLocalDataSource);
      },
    );
  });

  group('getSavedComics', () {
    test(
      'should return null if LocalDataSource returns null',
      () async {
        // Arrange
        when(() => comicsLocalDataSource.getSavedComics()).thenAnswer((_) => null);

        // Act
        final result = comicsRepository.getSavedComics();

        // Assert
        expect(result, null);
        verify(() => comicsLocalDataSource.getSavedComics()).called(1);
      },
    );

    test(
      'should return ComicDataContainer if LocalDataSource returns not null',
      () async {
        // Arrange
        when(() => comicsLocalDataSource.getSavedComics()).thenAnswer((_) => tComicDataContainer);

        // Act
        final result = comicsRepository.getSavedComics();

        // Assert
        expect(result, tComicDataContainer);
        verify(() => comicsLocalDataSource.getSavedComics()).called(1);
      },
    );
  });

  group('saveComics', () {
    test(
      'should correctly propagate the call do LocalDataSource',
      () async {
        // Arrange
        when(() => comicsLocalDataSource.saveComics(captureAny())).thenAnswer((_) async => null);

        // Act
        await comicsRepository.saveComics(tComicDataContainer);

        // Assert
        verify(() => comicsLocalDataSource.saveComics(tComicDataContainer)).called(1);
      },
    );
  });
}

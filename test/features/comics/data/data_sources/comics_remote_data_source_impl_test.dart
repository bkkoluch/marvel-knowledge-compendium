import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_knowledge_compendium/core/error/exceptions.dart';
import 'package:marvel_knowledge_compendium/core/network/dio_client.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/data_sources/comics_remote_data_source.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/data_sources/comics_remote_data_source_impl.dart';
import 'package:marvel_knowledge_compendium/features/comics/data/dtos/comic_data_wrapper_dto.dart';

import '../../../../mocks.dart';
import '../../../../test_json_data.dart';
import '../../../../test_setup.dart';

void main() {
  final DioClient dioClient = DioClient.createDioClient();
  final HttpClientAdapter dioAdapter = MockDioAdapter();
  final ComicsRemoteDataSource comicsRemoteDataSource = ComicsRemoteDataSourceImpl(dioClient);

  setUpAll(() {
    dioClient.dio.httpClientAdapter = dioAdapter;
    baseSetup();
  });

  group('getComicsList', () {
    test(
      'should return ComicDataWrapperDto on a successful call',
      () async {
        // Arrange
        mockDioAdapterWithSuccessfulRequest(dioAdapter, tComicDataWrapperDtoJSON);

        // Act
        final result = await comicsRemoteDataSource.getComicsList();

        // Assert
        expect(result, ComicDataWrapperDtoExtension.fullFromJson(tComicDataWrapperDtoJSON));
      },
    );

    test(
      'should return ServerException on a failed call',
      () async {
        // Arrange
        mockDioAdapterWithFailedRequest(dioAdapter);

        // Act
        final result = comicsRemoteDataSource.getComicsList();

        // Assert
        expect(result, throwsA(isA<ServerException>()));
      },
    );
  });
}

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_knowledge_compendium/core/error/exceptions.dart';
import 'package:marvel_knowledge_compendium/core/network/dio_client.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_remote_data_source.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_remote_data_source_impl.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_data_wrapper_dto.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';
import '../../../../test_json_data.dart';
import '../../../../test_setup.dart';

void main() {
  final DioClient dioClient = DioClient.createDioClient();
  final HttpClientAdapter dioAdapter = MockDioAdapter();
  final CharactersRemoteDataSource charactersRemoteDataSource = CharactersRemoteDataSourceImpl(dioClient);

  setUpAll(() {
    dioClient.dio.httpClientAdapter = dioAdapter;
    baseSetup();
  });

  group('getCharacterList', () {
    test(
      'should return CharacterDataWrapperDto on a successful call',
      () async {
        // Arrange
        mockDioAdapterWithSuccessfulRequest(dioAdapter, tCharacterDataWrapperDtoJSON);

        // Act
        final result = await charactersRemoteDataSource.getCharactersList();

        // Assert
        expect(result, CharacterDataWrapperDtoExtension.fullFromJson(tCharacterDataWrapperDtoJSON));
        expect(result.data?.results?.length, 2);
      },
    );

    test(
      'should return ServerException on a failed call',
      () async {
        // Arrange
        mockDioAdapterWithFailedRequest(dioAdapter);

        // Act
        final result = charactersRemoteDataSource.getCharactersList();

        // Assert
        expect(result, throwsA(isA<ServerException>()));
      },
    );
  });

  group('getCharacterById', () {
    test(
      'should return CharacterDataWrapperDto on a successful call',
      () async {
        // Arrange
        mockDioAdapterWithSuccessfulRequest(dioAdapter, tDynamicCharacterWrapperSingleResultJSON);

        // Act
        final result = await charactersRemoteDataSource.getCharacterById(tCharacterId);

        // Assert
        expect(result, CharacterDataWrapperDtoExtension.fullFromJson(tDynamicCharacterWrapperSingleResultJSON));
        expect(result.data?.results?.length, 1);
      },
    );

    test(
      'should return ServerException on a failed call',
      () async {
        // Arrange
        mockDioAdapterWithFailedRequest(dioAdapter);

        // Act
        final result = charactersRemoteDataSource.getCharacterById(tCharacterId);

        // Assert
        expect(result, throwsA(isA<ServerException>()));
      },
    );
  });
}

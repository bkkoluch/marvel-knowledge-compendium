import 'package:injectable/injectable.dart';
import 'package:marvel_knowledge_compendium/core/data/endpoints.dart';
import 'package:marvel_knowledge_compendium/core/error/exceptions.dart';
import 'package:marvel_knowledge_compendium/core/network/dio_client.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_remote_data_source.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_data_wrapper_dto.dart';

@Injectable(as: CharactersRemoteDataSource)
class CharactersRemoteDataSourceImpl implements CharactersRemoteDataSource {
  final DioClient dioClient;

  const CharactersRemoteDataSourceImpl(this.dioClient);

  @override
  Future<CharacterDataWrapperDto> getCharactersList({int? offset}) async => await _fetchCharacterData(offset: offset);

  @override
  Future<CharacterDataWrapperDto> getCharacterById(String characterId) async =>
      await _fetchCharacterData(characterId: characterId);

  Future<CharacterDataWrapperDto> _fetchCharacterData({String? characterId, int? offset}) async {
    try {
      final response = await dioClient.dio.get(
        characterId == null ? Endpoints.characters() : Endpoints.characterById(characterId),
        queryParameters: {
          offsetFieldKey: offset,
          limitFieldKey: defaultLimit,
        },
      );
      return CharacterDataWrapperDtoExtension.fullFromJson(response.data);
    } catch (e) {
      throw ServerException(e, '_fetchCharacterData($characterId)', stackTrace: StackTrace.current);
    }
  }
}

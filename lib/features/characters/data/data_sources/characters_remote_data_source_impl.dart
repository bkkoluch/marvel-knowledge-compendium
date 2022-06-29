import 'package:injectable/injectable.dart';
import 'package:marvel_knowledge_compendium/core/data/endpoints.dart';
import 'package:marvel_knowledge_compendium/core/error/exceptions.dart';
import 'package:marvel_knowledge_compendium/core/network/dio_client.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_remote_data_source.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_data_container_dto.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_data_wrapper_dto.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_dto.dart';

@Injectable(as: CharactersRemoteDataSource)
class CharactersRemoteDataSourceImpl implements CharactersRemoteDataSource {
  final DioClient dioClient;

  const CharactersRemoteDataSourceImpl(this.dioClient);

  @override
  Future<CharacterDataWrapperDto> getCharactersList() async {
    try {
      final response = await dioClient.dio.get(Endpoints.characters());
      return CharacterDataWrapperDto.fromJson(
        response.data,
        (characterDataWrapperData) => CharacterDataContainerDto.fromJson(
          characterDataWrapperData as Map<String, dynamic>,
          (characterDtoData) => CharacterDto.fromJson(
            characterDtoData as Map<String, dynamic>,
          ),
        ),
      );
    } catch (e) {
      throw ServerException(e, '', stackTrace: StackTrace.current);
    }
  }

  @override
  Future<CharacterDataWrapperDto> getCharacterById(String characterId) async {
    try {
      final response = await dioClient.dio.get(Endpoints.characterById(characterId));
      return CharacterDataWrapperDto.fromJson(
        response.data,
        (characterDataWrapperData) => CharacterDataContainerDto.fromJson(
          characterDataWrapperData as Map<String, dynamic>,
          (characterDtoData) => CharacterDto.fromJson(
            characterDtoData as Map<String, dynamic>,
          ),
        ),
      );
    } catch (e) {
      throw ServerException(e, '', stackTrace: StackTrace.current);
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_knowledge_compendium/core/error/exceptions.dart';
import 'package:marvel_knowledge_compendium/core/error/failures.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_local_data_source.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_remote_data_source.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_data_wrapper_dto.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_container.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/repositories/characters_repository.dart';

@Injectable(as: CharactersRepository)
class CharactersRepositoryImpl implements CharactersRepository {
  final CharactersRemoteDataSource charactersRemoteDataSource;
  final CharactersLocalDataSource charactersLocalDataSource;

  const CharactersRepositoryImpl(this.charactersRemoteDataSource, this.charactersLocalDataSource);

  @override
  Future<Either<Failure, CharacterDataWrapperDto>> getCharactersList({int? offset}) async =>
      await _getCharactersOrCharacterById(offset: offset);

  @override
  Future<Either<Failure, CharacterDataWrapperDto>> getCharacterById(String characterId) async =>
      await _getCharactersOrCharacterById(characterId: characterId);

  @override
  CharacterDataContainer? getSavedCharacters() => this.charactersLocalDataSource.getSavedCharacters();

  @override
  Future<void> saveCharacters(CharacterDataContainer characterDataContainer) async =>
      await this.charactersLocalDataSource.saveCharacters(characterDataContainer);

  Future<Either<Failure, CharacterDataWrapperDto>> _getCharactersOrCharacterById({
    String? characterId,
    int? offset,
  }) async {
    try {
      if (characterId != null) {
        return Right(await this.charactersRemoteDataSource.getCharacterById(characterId));
      }
      return Right(await this.charactersRemoteDataSource.getCharactersList(offset: offset));
    } on ServerException catch (error) {
      return Left(ServerFailure(error.description));
    } catch (error) {
      return Left(GenericFailure(error.toString()));
    }
  }
}

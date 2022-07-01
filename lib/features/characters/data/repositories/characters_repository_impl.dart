import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_knowledge_compendium/core/error/exceptions.dart';
import 'package:marvel_knowledge_compendium/core/error/failures.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_remote_data_source.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_data_wrapper_dto.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/repositories/characters_repository.dart';

@Injectable(as: CharactersRepository)
class CharactersRepositoryImpl implements CharactersRepository {
  final CharactersRemoteDataSource charactersRemoteDataSource;

  const CharactersRepositoryImpl(this.charactersRemoteDataSource);

  @override
  Future<Either<Failure, CharacterDataWrapperDto>> getCharactersList() async => await _getCharactersOrCharacterById();

  @override
  Future<Either<Failure, CharacterDataWrapperDto>> getCharacterById(String characterId) async =>
      await _getCharactersOrCharacterById(characterId);

  Future<Either<Failure, CharacterDataWrapperDto>> _getCharactersOrCharacterById([String? characterId]) async {
    try {
      if (characterId != null) {
        return Right(await this.charactersRemoteDataSource.getCharacterById(characterId));
      }
      return Right(await this.charactersRemoteDataSource.getCharactersList());
    } on ServerException catch (error) {
      return Left(ServerFailure(error.description));
    } catch (error) {
      return Left(GenericFailure(error.toString()));
    }
  }
}

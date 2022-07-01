import 'package:dartz/dartz.dart';
import 'package:marvel_knowledge_compendium/core/error/failures.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_data_wrapper_dto.dart';

abstract class CharactersRepository {
  Future<Either<Failure, CharacterDataWrapperDto>> getCharactersList();

  Future<Either<Failure, CharacterDataWrapperDto>> getCharacterById(String characterId);
}

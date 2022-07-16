import 'package:dartz/dartz.dart';
import 'package:marvel_knowledge_compendium/core/error/failures.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_data_wrapper_dto.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_container.dart';

abstract class CharactersRepository {
  Future<Either<Failure, CharacterDataWrapperDto>> getCharactersList({int? offset});

  Future<Either<Failure, CharacterDataWrapperDto>> getCharacterById(String characterId);

  CharacterDataContainer? getSavedCharacters();

  Future<void> saveCharacters(CharacterDataContainer characterDataContainer);
}

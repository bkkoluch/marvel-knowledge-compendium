import 'package:injectable/injectable.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_remote_data_source.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_data_wrapper_dto.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/repositories/characters_repository.dart';

@Injectable(as: CharactersRepository)
class CharactersRepositoryImpl implements CharactersRepository {
  final CharactersRemoteDataSource charactersRemoteDataSource;

  const CharactersRepositoryImpl(this.charactersRemoteDataSource);

  @override
  Future<CharacterDataWrapperDto> getCharactersList() => this.charactersRemoteDataSource.getCharactersList();

  @override
  Future<CharacterDataWrapperDto> getCharactersById(String characterId) =>
      this.charactersRemoteDataSource.getCharacterById(characterId);
}

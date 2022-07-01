import 'package:dartz/dartz.dart';
import 'package:marvel_knowledge_compendium/core/error/failures.dart';
import 'package:marvel_knowledge_compendium/core/shared_entities/data_container.dart';
import 'package:marvel_knowledge_compendium/core/shared_entities/data_wrapper.dart';
import 'package:marvel_knowledge_compendium/core/use_cases/use_case.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_data_wrapper_dto.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_dto.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_wrapper.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/repositories/characters_repository.dart';

class GetCharactersOrCharacterUseCase extends UseCase<Future<Either<Failure, CharacterDataWrapper>>, String?> {
  final CharactersRepository charactersRepository;

  GetCharactersOrCharacterUseCase(this.charactersRepository);

  @override
  Future<Either<Failure, CharacterDataWrapper>> call([String? characterId]) async {
    if (characterId != null) {
      return await _getResult(([_]) async => await (charactersRepository.getCharacterById(characterId)));
    } else {
      return await _getResult(([_]) async => await charactersRepository.getCharactersList());
    }
  }

  Future<Either<Failure, CharacterDataWrapper>> _getResult(
    Future<Either<Failure, DataWrapper<DataContainer<CharacterDto>>>> Function([String? characterId]) function,
  ) async {
    return await (await function()).fold(
      (Failure failure) => Left(failure),
      (CharacterDataWrapperDto dto) => Right(CharacterDataWrapperExtension.fromDto(dto)),
    );
  }
}

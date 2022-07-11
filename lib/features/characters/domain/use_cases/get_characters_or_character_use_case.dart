import 'package:dartz/dartz.dart';
import 'package:marvel_knowledge_compendium/core/error/failures.dart';
import 'package:marvel_knowledge_compendium/core/shared_entities/data_container.dart';
import 'package:marvel_knowledge_compendium/core/shared_entities/data_wrapper.dart';
import 'package:marvel_knowledge_compendium/core/use_cases/use_case.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_data_wrapper_dto.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/dtos/character_dto.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_wrapper.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/repositories/characters_repository.dart';

class GetCharactersOrCharacterUseCase
    extends UseCase<Future<Either<Failure, CharacterDataWrapper>>, GetCharactersOrCharacterUseCaseParams> {
  final CharactersRepository charactersRepository;

  GetCharactersOrCharacterUseCase(this.charactersRepository);

  @override
  Future<Either<Failure, CharacterDataWrapper>> call(GetCharactersOrCharacterUseCaseParams params) async {
    if (params.characterId != null) {
      return await _getResult(([_, __]) async => await (charactersRepository.getCharacterById(params.characterId!)));
    } else {
      return await _getResult(([_, __]) async => await charactersRepository.getCharactersList(offset: params.offset));
    }
  }

  Future<Either<Failure, CharacterDataWrapper>> _getResult(
    Future<Either<Failure, DataWrapper<DataContainer<CharacterDto>>>> Function() function,
  ) async {
    return await (await function()).fold(
      (Failure failure) => Left(failure),
      (CharacterDataWrapperDto dto) => Right(CharacterDataWrapperExtension.fromDto(dto)),
    );
  }
}

class GetCharactersOrCharacterUseCaseParams {
  final String? characterId;
  final int? offset;

  GetCharactersOrCharacterUseCaseParams({this.characterId, this.offset});
}

import 'package:dartz/dartz.dart';
import 'package:marvel_knowledge_compendium/core/error/failures.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.dart';
import 'package:marvel_knowledge_compendium/core/use_cases/use_case.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_wrapper.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_characters_or_character_use_case.dart';

class GetCharacterByIdUseCase extends UseCase<Future<Either<Failure, CharacterDataWrapper>>, String> {
  @override
  Future<Either<Failure, CharacterDataWrapper>> call(String characterId) async =>
      await getIt<GetCharactersOrCharacterUseCase>()(GetCharactersOrCharacterUseCaseParams(characterId: characterId));
}

import 'package:dartz/dartz.dart';
import 'package:marvel_knowledge_compendium/core/error/failures.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.dart';
import 'package:marvel_knowledge_compendium/core/use_cases/use_case.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_wrapper.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_characters_or_character_use_case.dart';

class GetAllCharactersUseCase extends UseCase<Future<Either<Failure, CharacterDataWrapper>>, NoParams?> {
  @override
  Future<Either<Failure, CharacterDataWrapper>> call([NoParams? _]) async =>
      await getIt<GetCharactersOrCharacterUseCase>()();
}

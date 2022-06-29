// import 'package:dartz/dartz.dart';
// import 'package:marvel_knowledge_compendium/core/error/failures.dart';
// import 'package:marvel_knowledge_compendium/core/use_cases/use_case.dart';
// import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_wrapper.dart';
// import 'package:marvel_knowledge_compendium/features/characters/domain/repositories/characters_repository.dart';
//
// class GetAllCharactersUseCase extends UseCase<Future<Either<Failure, CharacterDataWrapper>>, NoParams> {
//   final CharactersRepository charactersRepository;
//
//   GetAllCharactersUseCase(this.charactersRepository);
//
//   @override
//   Future<Either<Failure, CharacterDataWrapper>> call([NoParams? params]) async {
//     final result = await charactersRepository.getCharactersList();
//     final CharacterDataWrapper characterDataWrapper = CharacterDataWrapper.fromDto(result);
//   }
// }

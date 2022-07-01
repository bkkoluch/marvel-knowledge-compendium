import 'package:dio/dio.dart';
import 'package:marvel_knowledge_compendium/core/network/dio_client.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_remote_data_source.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/repositories/characters_repository.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_all_characters_use_case.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_characters_or_character_use_case.dart';
import 'package:marvel_knowledge_compendium/features/home/presentation/cubits/home_page_cubit.dart';
import 'package:mocktail/mocktail.dart';

// Network

class MockDioClient extends Mock implements DioClient {}

class MockDioAdapter extends Mock implements HttpClientAdapter {}

// DataSources

class MockCharacterRemoteDataSource extends Mock implements CharactersRemoteDataSource {}

// Repositories

class MockCharactersRepository extends Mock implements CharactersRepository {}

// UseCases
class MockGetCharactersOrCharacterUseCase extends Mock implements GetCharactersOrCharacterUseCase {}

class MockGetAllCharactersUseCase extends Mock implements GetAllCharactersUseCase {}

// Cubits
class MockHomePageCubit extends Mock implements HomePageCubit {}

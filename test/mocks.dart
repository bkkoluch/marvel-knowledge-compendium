import 'package:dio/dio.dart';
import 'package:marvel_knowledge_compendium/core/network/dio_client.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_local_data_source.dart';
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_remote_data_source.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/repositories/characters_repository.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_all_characters_use_case.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_characters_or_character_use_case.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_saved_characters_use_case.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/save_characters_use_case.dart';
import 'package:marvel_knowledge_compendium/features/characters/presentation/blocs/characters_page_bloc.dart';
import 'package:marvel_knowledge_compendium/features/home/presentation/cubits/home_page_cubit.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Network & Misc

class MockDioClient extends Mock implements DioClient {}

class MockDioAdapter extends Mock implements HttpClientAdapter {}

class MockSharedPreferences extends Mock implements SharedPreferences {}

// DataSources

class MockCharactersRemoteDataSource extends Mock implements CharactersRemoteDataSource {}

class MockCharactersLocalDataSource extends Mock implements CharactersLocalDataSource {}

// Repositories

class MockCharactersRepository extends Mock implements CharactersRepository {}

// UseCases
class MockGetCharactersOrCharacterUseCase extends Mock implements GetCharactersOrCharacterUseCase {}

class MockGetAllCharactersUseCase extends Mock implements GetAllCharactersUseCase {}

class MockGetSavedCharactersUseCase extends Mock implements GetSavedCharactersUseCase {}

class MockSaveCharactersUseCase extends Mock implements SaveCharactersUseCase {}

// Cubits
class MockHomePageCubit extends Mock implements HomePageCubit {}

class MockCharactersPageBloc extends Mock implements CharactersPageBloc {}

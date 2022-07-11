// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:marvel_knowledge_compendium/core/network/dio_client.dart'
    as _i7;
import 'package:marvel_knowledge_compendium/core/services/navigation_service.dart'
    as _i3;
import 'package:marvel_knowledge_compendium/core/services/navigation_service.gr.dart'
    as _i4;
import 'package:marvel_knowledge_compendium/core/services/registration_service.dart'
    as _i21;
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_local_data_source.dart'
    as _i13;
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_local_data_source_impl.dart'
    as _i14;
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_remote_data_source.dart'
    as _i15;
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_remote_data_source_impl.dart'
    as _i16;
import 'package:marvel_knowledge_compendium/features/characters/data/repositories/characters_repository_impl.dart'
    as _i18;
import 'package:marvel_knowledge_compendium/features/characters/domain/repositories/characters_repository.dart'
    as _i17;
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_all_characters_use_case.dart'
    as _i8;
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_character_by_id_use_case.dart'
    as _i9;
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_characters_or_character_use_case.dart'
    as _i10;
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_saved_characters_use_case.dart'
    as _i19;
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/save_characters_use_case.dart'
    as _i20;
import 'package:marvel_knowledge_compendium/features/characters/presentation/blocs/characters_page_bloc.dart'
    as _i5;
import 'package:marvel_knowledge_compendium/features/home/presentation/cubits/home_page_cubit.dart'
    as _i11;
import 'package:shared_preferences/shared_preferences.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registrationService = _$RegistrationService();
  gh.factory<_i3.$AppRouter>(() => _i3.$AppRouter());
  gh.factory<_i4.AppRouter>(() => registrationService.appRouter);
  gh.factory<_i5.CharactersPageBloc>(() => _i5.CharactersPageBloc());
  gh.factory<_i6.Dio>(() => registrationService.dio);
  gh.factory<_i7.DioClient>(() => _i7.DioClient.createDioClient());
  gh.factory<_i8.GetAllCharactersUseCase>(() => _i8.GetAllCharactersUseCase());
  gh.factory<_i9.GetCharacterByIdUseCase>(() => _i9.GetCharacterByIdUseCase());
  gh.factory<_i10.GetCharactersOrCharacterUseCaseParams>(() =>
      _i10.GetCharactersOrCharacterUseCaseParams(
          characterId: get<String>(), offset: get<int>()));
  gh.factory<_i11.HomePageCubit>(() => _i11.HomePageCubit());
  gh.factoryAsync<_i12.SharedPreferences>(() => registrationService.prefs);
  gh.factoryAsync<_i13.CharactersLocalDataSource>(() async =>
      _i14.CharactersLocalDataSourceImpl(
          await get.getAsync<_i12.SharedPreferences>()));
  gh.factory<_i15.CharactersRemoteDataSource>(
      () => _i16.CharactersRemoteDataSourceImpl(get<_i7.DioClient>()));
  gh.factoryAsync<_i17.CharactersRepository>(() async =>
      _i18.CharactersRepositoryImpl(get<_i15.CharactersRemoteDataSource>(),
          await get.getAsync<_i13.CharactersLocalDataSource>()));
  gh.factoryAsync<_i10.GetCharactersOrCharacterUseCase>(() async =>
      _i10.GetCharactersOrCharacterUseCase(
          await get.getAsync<_i17.CharactersRepository>()));
  gh.factoryAsync<_i19.GetSavedCharactersUseCase>(() async =>
      _i19.GetSavedCharactersUseCase(
          await get.getAsync<_i17.CharactersRepository>()));
  gh.factoryAsync<_i20.SaveCharactersUseCase>(() async =>
      _i20.SaveCharactersUseCase(
          await get.getAsync<_i17.CharactersRepository>()));
  return get;
}

class _$RegistrationService extends _i21.RegistrationService {}

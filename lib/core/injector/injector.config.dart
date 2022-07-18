// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:marvel_knowledge_compendium/core/network/dio_client.dart'
    as _i8;
import 'package:marvel_knowledge_compendium/core/services/navigation_service.dart'
    as _i3;
import 'package:marvel_knowledge_compendium/core/services/navigation_service.gr.dart'
    as _i4;
import 'package:marvel_knowledge_compendium/core/services/registration_service.dart'
    as _i31;
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_local_data_source.dart'
    as _i14;
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_local_data_source_impl.dart'
    as _i15;
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_remote_data_source.dart'
    as _i16;
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_remote_data_source_impl.dart'
    as _i17;
import 'package:marvel_knowledge_compendium/features/characters/data/repositories/characters_repository_impl.dart'
    as _i19;
import 'package:marvel_knowledge_compendium/features/characters/domain/repositories/characters_repository.dart'
    as _i18;
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_all_characters_use_case.dart'
    as _i9;
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_character_by_id_use_case.dart'
    as _i10;
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_characters_or_character_use_case.dart'
    as _i11;
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_saved_characters_use_case.dart'
    as _i27;
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/save_characters_use_case.dart'
    as _i30;
import 'package:marvel_knowledge_compendium/features/characters/presentation/blocs/characters_page_bloc.dart'
    as _i5;
import 'package:marvel_knowledge_compendium/features/comics/data/data_sources/comics_local_data_source.dart'
    as _i20;
import 'package:marvel_knowledge_compendium/features/comics/data/data_sources/comics_local_data_source_impl.dart'
    as _i21;
import 'package:marvel_knowledge_compendium/features/comics/data/data_sources/comics_remote_data_source.dart'
    as _i22;
import 'package:marvel_knowledge_compendium/features/comics/data/data_sources/comics_remote_data_source_impl.dart'
    as _i23;
import 'package:marvel_knowledge_compendium/features/comics/data/repositories/comics_repository_impl.dart'
    as _i25;
import 'package:marvel_knowledge_compendium/features/comics/domain/repositories/comics_repository.dart'
    as _i24;
import 'package:marvel_knowledge_compendium/features/comics/domain/use_cases/get_all_comics_use_case.dart'
    as _i26;
import 'package:marvel_knowledge_compendium/features/comics/domain/use_cases/get_saved_comics_use_case.dart'
    as _i28;
import 'package:marvel_knowledge_compendium/features/comics/domain/use_cases/save_all_comics_use_case.dart'
    as _i29;
import 'package:marvel_knowledge_compendium/features/comics/presentation/cubits/comics_page_cubit.dart'
    as _i6;
import 'package:marvel_knowledge_compendium/features/home/presentation/cubits/home_page_cubit.dart'
    as _i12;
import 'package:shared_preferences/shared_preferences.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registrationService = _$RegistrationService();
  gh.factory<_i3.$AppRouter>(() => _i3.$AppRouter());
  gh.factory<_i4.AppRouter>(() => registrationService.appRouter);
  gh.factory<_i5.CharactersPageBloc>(() => _i5.CharactersPageBloc());
  gh.factory<_i6.ComicsPageCubit>(() => _i6.ComicsPageCubit());
  gh.factory<_i7.Dio>(() => registrationService.dio);
  gh.factory<_i8.DioClient>(() => _i8.DioClient.createDioClient());
  gh.factory<_i9.GetAllCharactersUseCase>(() => _i9.GetAllCharactersUseCase());
  gh.factory<_i10.GetCharacterByIdUseCase>(
      () => _i10.GetCharacterByIdUseCase());
  gh.factory<_i11.GetCharactersOrCharacterUseCaseParams>(() =>
      _i11.GetCharactersOrCharacterUseCaseParams(
          characterId: get<String>(), offset: get<int>()));
  gh.factory<_i12.HomePageCubit>(() => _i12.HomePageCubit());
  gh.factoryAsync<_i13.SharedPreferences>(() => registrationService.prefs);
  gh.factoryAsync<_i14.CharactersLocalDataSource>(() async =>
      _i15.CharactersLocalDataSourceImpl(
          await get.getAsync<_i13.SharedPreferences>()));
  gh.factory<_i16.CharactersRemoteDataSource>(
      () => _i17.CharactersRemoteDataSourceImpl(get<_i8.DioClient>()));
  gh.factoryAsync<_i18.CharactersRepository>(() async =>
      _i19.CharactersRepositoryImpl(get<_i16.CharactersRemoteDataSource>(),
          await get.getAsync<_i14.CharactersLocalDataSource>()));
  gh.factoryAsync<_i20.ComicsLocalDataSource>(() async =>
      _i21.ComicsLocalDataSourceImpl(
          await get.getAsync<_i13.SharedPreferences>()));
  gh.factory<_i22.ComicsRemoteDataSource>(
      () => _i23.ComicsRemoteDataSourceImpl(get<_i8.DioClient>()));
  gh.factoryAsync<_i24.ComicsRepository>(() async => _i25.ComicsRepositoryImpl(
      await get.getAsync<_i20.ComicsLocalDataSource>(),
      get<_i22.ComicsRemoteDataSource>()));
  gh.factoryAsync<_i26.GetAllComicsUseCase>(() async =>
      _i26.GetAllComicsUseCase(await get.getAsync<_i24.ComicsRepository>()));
  gh.factoryAsync<_i11.GetCharactersOrCharacterUseCase>(() async =>
      _i11.GetCharactersOrCharacterUseCase(
          await get.getAsync<_i18.CharactersRepository>()));
  gh.factoryAsync<_i27.GetSavedCharactersUseCase>(() async =>
      _i27.GetSavedCharactersUseCase(
          await get.getAsync<_i18.CharactersRepository>()));
  gh.factoryAsync<_i28.GetSavedComicsUseCase>(() async =>
      _i28.GetSavedComicsUseCase(await get.getAsync<_i24.ComicsRepository>()));
  gh.factoryAsync<_i29.SaveAllComicsUseCase>(() async =>
      _i29.SaveAllComicsUseCase(await get.getAsync<_i24.ComicsRepository>()));
  gh.factoryAsync<_i30.SaveCharactersUseCase>(() async =>
      _i30.SaveCharactersUseCase(
          await get.getAsync<_i18.CharactersRepository>()));
  return get;
}

class _$RegistrationService extends _i31.RegistrationService {}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:marvel_knowledge_compendium/core/network/dio_client.dart'
    as _i6;
import 'package:marvel_knowledge_compendium/core/services/navigation_service.dart'
    as _i3;
import 'package:marvel_knowledge_compendium/core/services/navigation_service.gr.dart'
    as _i4;
import 'package:marvel_knowledge_compendium/core/services/registration_service.dart'
    as _i13;
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_remote_data_source.dart'
    as _i8;
import 'package:marvel_knowledge_compendium/features/characters/data/data_sources/characters_remote_data_source_impl.dart'
    as _i9;
import 'package:marvel_knowledge_compendium/features/characters/data/repositories/characters_repository_impl.dart'
    as _i11;
import 'package:marvel_knowledge_compendium/features/characters/domain/repositories/characters_repository.dart'
    as _i10;
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_character_by_id_use_case.dart'
    as _i12;
import 'package:marvel_knowledge_compendium/features/home/presentation/cubits/home_page_cubit.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registrationService = _$RegistrationService();
  gh.factory<_i3.$AppRouter>(() => _i3.$AppRouter());
  gh.factory<_i4.AppRouter>(() => registrationService.appRouter);
  gh.factory<_i5.Dio>(() => registrationService.dio);
  gh.factory<_i6.DioClient>(() => _i6.DioClient.createDioClient());
  gh.factory<_i7.HomePageCubit>(() => _i7.HomePageCubit());
  gh.factory<_i8.CharactersRemoteDataSource>(
      () => _i9.CharactersRemoteDataSourceImpl(get<_i6.DioClient>()));
  gh.factory<_i10.CharactersRepository>(() =>
      _i11.CharactersRepositoryImpl(get<_i8.CharactersRemoteDataSource>()));
  gh.factory<_i12.GetCharacterByIdUseCase>(
      () => _i12.GetCharacterByIdUseCase(get<_i10.CharactersRepository>()));
  return get;
}

class _$RegistrationService extends _i13.RegistrationService {}

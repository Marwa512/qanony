// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:qanony/core/injection/module_register.dart' as _i239;
import 'package:qanony/core/utils/app_router.dart' as _i76;
import 'package:qanony/features/search/data/data_resourses/local/shared_pref.dart'
    as _i681;
import 'package:qanony/features/search/data/data_resourses/remote/client.dart'
    as _i730;
import 'package:qanony/features/search/data/repositories/search_repo_imp.dart'
    as _i959;
import 'package:qanony/features/search/presentation/bloc/search_bloc.dart'
    as _i520;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i681.SearchLocalData>(() => _i681.SearchLocalData());
    gh.factory<_i959.SearchRepoImp>(() => _i959.SearchRepoImp());
    gh.singleton<_i361.Dio>(() => registerModule.buildDio);
    gh.singleton<_i730.RestClient>(() => registerModule.restClient);
    gh.singleton<_i76.AppRouter>(() => _i76.AppRouter());
    gh.singleton<_i520.SearchBloc>(
        () => _i520.SearchBloc(gh<_i959.SearchRepoImp>()));
    return this;
  }
}

class _$RegisterModule extends _i239.RegisterModule {}

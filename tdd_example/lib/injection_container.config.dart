// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'data/data_sources/remote_data_source.dart' as _i4;
import 'data/repositories/weather_repository_impl.dart' as _i6;
import 'domain/repository/weather_repository.dart' as _i5;
import 'domain/use_cases/get_current_weather.dart' as _i7;
import 'presentation/bloc/weather_bloc.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final httpClient = _$HttpClient();
    gh.lazySingleton<_i3.Client>(() => httpClient.httpClient);
    gh.lazySingleton<_i4.WeatherRemoteDataSource>(
        () => _i4.WeatherRemoteDataSourceImpl(gh<_i3.Client>()));
    gh.lazySingleton<_i5.WeahterRepository>(
        () => _i6.WeatherRepositoryImpl(gh<_i4.WeatherRemoteDataSource>()));
    gh.lazySingleton<_i7.GetCurrentWeahterUseCase>(
        () => _i7.GetCurrentWeahterUseCase(gh<_i5.WeahterRepository>()));
    gh.factory<_i8.WeatherBloc>(
        () => _i8.WeatherBloc(gh<_i7.GetCurrentWeahterUseCase>()));
    return this;
  }
}

class _$HttpClient extends _i4.HttpClient {}

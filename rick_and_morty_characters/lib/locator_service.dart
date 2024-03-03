import 'package:di_clean_architecture_solid/feature/data/datasources/person_local_data_source.dart';
import 'package:di_clean_architecture_solid/feature/data/datasources/person_remote_data_source.dart';
import 'package:di_clean_architecture_solid/feature/data/repository/person_repository_impl.dart';
import 'package:di_clean_architecture_solid/feature/domain/repository/person_perository.dart';
import 'package:di_clean_architecture_solid/feature/domain/usecases/get_all_persons.dart';
import 'package:di_clean_architecture_solid/feature/domain/usecases/search_person.dart';
import 'package:di_clean_architecture_solid/feature/presentetion/bloc/person_list_cubit/person_list_cubit.dart';
import 'package:di_clean_architecture_solid/feature/presentetion/bloc/search_bloc/search_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/platform/network_info.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //Cubit,Bloc
  sl.registerFactory(
    () => PersonListCubit(
      getAllPersons: sl(),
    ),
  );
  sl.registerFactory(
    () => PersonSearchBloc(
      searchPerson: sl(),
    ),
  );

  //UseCasese
  sl.registerLazySingleton(
    () => GetAllPersons(
      sl(),
    ),
  );
  sl.registerLazySingleton(
    () => SearchPerson(
      sl(),
    ),
  );

  //Repository
  sl.registerLazySingleton<PersonRepository>(
    () => PersonRepositoryImpl(
      localDataSource: sl(),
      networkInfo: sl(),
      remoteDataSource: sl(),
    ),
  );

  sl.registerLazySingleton<PersonRemoteDataSource>(
    () => PersonRemoteDataSourceImpl(
      client: http.Client(),
    ),
  );
  sl.registerLazySingleton<PersonLocalDataSource>(
    () => PersonLocalDataSourceImlp(
      sharedPreferences: sl(),
    ),
  );

  //Core
  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(
      sl(),
    ),
  );

  //External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton(() => sharedPreferences);
}

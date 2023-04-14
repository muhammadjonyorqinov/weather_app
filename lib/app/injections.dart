import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '/features/home/data/data_source/weather_local_data_source.dart';
import '/utils/network/network_info.dart';
import '/features/home/domain/usecases/get_geocode.dart';
import '/features/home/data/data_source/weather_remote_data_source.dart';
import '/features/home/data/repository/weather_repo_impl.dart';
import '/features/home/domain/repository/weather_repo.dart';
import '/features/home/domain/usecases/get_weather.dart';
import '/features/home/presentation/bloc/weather_bloc.dart';
import 'app_router.dart';

final ls = GetIt.instance;

Future<void> setup() async {
  //Core
  final prefs = await SharedPreferences.getInstance();
  ls.registerLazySingleton<SharedPreferences>(
    () => prefs,
  );
  ls.registerSingleton<AppRouter>(AppRouter());
  ls.registerSingleton<InternetConnectionChecker>(InternetConnectionChecker());
  ls.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(ls()));

  /// WeatherBloc
  ls.registerFactory<WeatherBloc>(
    () => WeatherBloc(
      getWeather: ls(),
      getGeoCode: ls(),
    ),
  );
  // repositories
  ls.registerLazySingleton<WeatherRepo>(() => WeatherRepoImpl(
        remoteSource: ls(),
        localSource: ls(),
        networkInfo: ls(),
      ));

  // use cases
  ls.registerLazySingleton<GetWeather>(() => GetWeather(repo: ls()));
  ls.registerLazySingleton<GetGeoCode>(() => GetGeoCode(repo: ls()));

  // data sources
  ls.registerLazySingleton<WeatherRemoteDataSource>(
      () => WeatherRemoteDataSourceImpl());
  ls.registerLazySingleton<WeatherLocalDataSource>(
      () => WeatherLocalDataSourceImpl(ls()));
}

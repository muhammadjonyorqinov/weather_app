import 'package:dartz/dartz.dart';
import '../../domain/params/geocode_params.dart';
import '../../domain/params/weather_params.dart';
import '/utils/network/network_info.dart';
import '../data_source/weather_local_data_source.dart';
import '../models/geocode.dart';
import '../models/weather_response.dart';
import '/features/home/data/data_source/weather_remote_data_source.dart';
import '/features/home/domain/repository/weather_repo.dart';
import '/utils/core/failures.dart';

class WeatherRepoImpl extends WeatherRepo {
  final WeatherRemoteDataSource remoteSource;
  final WeatherLocalDataSource localSource;
  final NetworkInfo networkInfo;

  WeatherRepoImpl({
    required this.remoteSource,
    required this.networkInfo,
    required this.localSource,
  });

  @override
  Future<Either<Failure, WeatherResponse?>> getWeather(
      WeatherParams params) async {
    print(await networkInfo.isConnected);
    if (await networkInfo.isConnected) {
      try {
        final data = await remoteSource.getWeather(params);
        localSource.cacheWeather(data);
        return Right(data);
      } on ServerFailure catch (e) {
        print('server');
        return Left(e);
      }
    } else {
      try {
        final data = await localSource.getLastWeather();
        return Right(data);
      } catch (e) {
        print(e);
        return const Left(CacheFailure('no_cached_data', 100));
      }
    }
  }

  @override
  Future<Either<Failure, GeoCode?>> getGeoCode(GeoCodeParams params) async {
    if (await networkInfo.isConnected) {
      try {
        final data = await remoteSource.getGeoCode(params);
        localSource.cacheGeoCode(data);
        return Right(data);
      } on ServerFailure catch (e) {
        print('server');
        return Left(e);
      }
    } else {
      try {
        final data = await localSource.getLastGeoCode();
        print(data);
        return Right(data);
      } catch (e) {
        print(e);
        return const Left(CacheFailure('no_cached_data', 100));
      }
    }
  }
}

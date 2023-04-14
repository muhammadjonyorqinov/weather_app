import 'package:dartz/dartz.dart';
import '../../data/models/geocode.dart';
import '../../data/models/weather_response.dart';
import '../params/geocode_params.dart';
import '../params/weather_params.dart';
import '/utils/core/failures.dart';

abstract class WeatherRepo {
  Future<Either<Failure, WeatherResponse?>> getWeather(WeatherParams params);

  Future<Either<Failure, GeoCode?>> getGeoCode(GeoCodeParams params);
}

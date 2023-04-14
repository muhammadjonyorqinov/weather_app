import 'package:dio/dio.dart';
import '/features/home/data/models/weather_response.dart';
import '../../domain/params/geocode_params.dart';
import '../../domain/params/weather_params.dart';
import '../models/geocode.dart';
import '/utils/core/failures.dart';
import '/utils/core/app_constants.dart';

abstract class WeatherRemoteDataSource {
  Future<WeatherResponse?> getWeather(WeatherParams params);

  Future<GeoCode?> getGeoCode(GeoCodeParams params);
}

class WeatherRemoteDataSourceImpl extends WeatherRemoteDataSource {
  final Dio dio;

  WeatherRemoteDataSourceImpl({required this.dio});

  @override
  Future<WeatherResponse?> getWeather(WeatherParams params) async {
    try {
      final response = await dio.get(
        AppConstants.WEATHER,
        queryParameters: params.toJson(),
      );

      if (response.statusCode == 200) {
        return WeatherResponse.fromJson(response.data);
      } else {
        throw ServerFailure(
          errorMessage: '${response.statusCode} ${response.statusMessage}',
          statusCode: response.statusCode,
        );
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<GeoCode?> getGeoCode(GeoCodeParams params) async {
    try {
      final response = await dio.get(
        AppConstants.GEOCODE,
        queryParameters: params.toJson(),
      );

      if (response.statusCode == 200) {
        final i = response.data as Iterable;
        return List<GeoCode>.from(i.map((e) => GeoCode.fromJson(e))).first;
      } else {
        throw ServerFailure(
          errorMessage: '${response.statusCode} ${response.statusMessage}',
          statusCode: response.statusCode,
        );
      }
    } catch (e) {
      rethrow;
    }
  }
}

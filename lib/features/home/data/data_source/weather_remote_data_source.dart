import 'dart:async';

import 'package:flutter/foundation.dart';
import '/features/home/data/models/weather_response.dart';
import '../../domain/params/geocode_params.dart';
import '../../domain/params/weather_params.dart';
import '../models/geocode.dart';
import '/utils/core/failures.dart';
import '/utils/core/app_constants.dart';
import '/utils/core/dio_provider.dart';

abstract class WeatherRemoteDataSource {
  Future<WeatherResponse?> getWeather(WeatherParams params);

  Future<GeoCode?> getGeoCode(GeoCodeParams params);
}

class WeatherRemoteDataSourceImpl extends WeatherRemoteDataSource {
  @override
  Future<WeatherResponse?> getWeather(WeatherParams params) async {
    try {
      final response = await HttpClientProvider.getInstance.client.get(
        AppConstants.WEATHER,
        queryParameters: params.toJson(),
      );

      if (response.statusCode == 200) {
        final data = await compute(parse, response.data);
        return data;
      } else {
        if (response.data is Map && response.data['message'] != null) {
          throw ServerFailure(
            errorMessage: response.data['message'],
            statusCode: response.data['status'],
          );
        } else {
          throw ServerFailure(
            errorMessage: '${response.statusCode} ${response.statusMessage}',
            statusCode: response.statusCode,
          );
        }
      }
    } catch (e) {
      print('error $e');
      rethrow;
    }
  }

  WeatherResponse parse(data) {
    return WeatherResponse.fromJson(data);
  }

  @override
  Future<GeoCode?> getGeoCode(GeoCodeParams params) async {
    try {
      final response = await HttpClientProvider.getInstance.client.get(
        AppConstants.GEOCODE,
        queryParameters: params.toJson(),
      );

      if (response.statusCode == 200) {
        final data = await compute(parseGeoCode, response.data);
        return data.first;
      } else {
        if (response.data is Map && response.data['message'] != null) {
          throw ServerFailure(
            errorMessage: response.data['message'],
            statusCode: response.data['status'],
          );
        } else {
          throw ServerFailure(
            errorMessage: '${response.statusCode} ${response.statusMessage}',
            statusCode: response.statusCode,
          );
        }
      }
    } catch (e) {
      print('error $e');
      rethrow;
    }
  }

  List<GeoCode> parseGeoCode(data) {
    final i = data as Iterable;
    return List<GeoCode>.from(i.map((e) => GeoCode.fromJson(e)));
  }
}

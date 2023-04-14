import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '/features/home/data/models/geocode.dart';
import '/utils/core/app_constants.dart';
import '/utils/core/failures.dart';
import '../models/weather_response.dart';

abstract class WeatherLocalDataSource {
  Future<WeatherResponse?> getLastWeather();

  Future<GeoCode?> getLastGeoCode();

  Future<void> cacheWeather(WeatherResponse? weather);

  Future<void> cacheGeoCode(GeoCode? geoCode);
}

class WeatherLocalDataSourceImpl extends WeatherLocalDataSource {
  final SharedPreferences prefs;

  WeatherLocalDataSourceImpl(this.prefs);

  @override
  Future<void> cacheWeather(WeatherResponse? weather) async {
    prefs.setString(
        AppConstants.CACHED_WEATHER, json.encode(weather?.toJson()));
  }

  @override
  Future<WeatherResponse?> getLastWeather() {
    final jsonString = prefs.getString(AppConstants.CACHED_WEATHER);
    print(jsonString);
    if (jsonString != null) {
      return Future.value(WeatherResponse.fromJson(json.decode(jsonString)));
    } else {
      throw const CacheFailure(message: 'no_cached_data', statusCode: 100);
    }
  }

  @override
  Future<void> cacheGeoCode(GeoCode? geoCode) async {
    prefs.setString(
        AppConstants.CACHED_GEOCODE, json.encode(geoCode?.toJson()));
  }

  @override
  Future<GeoCode?> getLastGeoCode() {
    final jsonString = prefs.getString(AppConstants.CACHED_GEOCODE);
    print(jsonString);
    if (jsonString != null) {
      return Future.value(GeoCode.fromJson(json.decode(jsonString)));
    } else {
      throw Future.value(AppConstants.DEFAULT_GEOCODE);
    }
  }
}

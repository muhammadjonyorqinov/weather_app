// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherParams _$$_WeatherParamsFromJson(Map<String, dynamic> json) =>
    _$_WeatherParams(
      lat: (json['lat'] as num?)?.toDouble() ?? AppConstants.DEFAULT_LAT,
      lon: (json['lon'] as num?)?.toDouble() ?? AppConstants.DEFAULT_LON,
      appid: json['appid'] as String? ?? AppConstants.API_KEY,
      units: json['units'] as String? ?? AppConstants.UNITS,
    );

Map<String, dynamic> _$$_WeatherParamsToJson(_$_WeatherParams instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'appid': instance.appid,
      'units': instance.units,
    };

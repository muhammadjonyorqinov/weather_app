// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HourlyWeather _$$_HourlyWeatherFromJson(Map<String, dynamic> json) =>
    _$_HourlyWeather(
      dateTime: const DateTimeConverter().fromJson(json['dt'] as int?),
      temp: const IntegerConverter().fromJson(json['temp']),
      humidity: json['humidity'] as int?,
      pressure: json['pressure'] as int?,
      windSpeed: const IntegerConverter().fromJson(json['wind_speed']),
    );

Map<String, dynamic> _$$_HourlyWeatherToJson(_$_HourlyWeather instance) =>
    <String, dynamic>{
      'dt': const DateTimeConverter().toJson(instance.dateTime),
      'temp': const IntegerConverter().toJson(instance.temp),
      'humidity': instance.humidity,
      'pressure': instance.pressure,
      'wind_speed': const IntegerConverter().toJson(instance.windSpeed),
    };

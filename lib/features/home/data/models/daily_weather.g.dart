// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DailyWeather _$$_DailyWeatherFromJson(Map<String, dynamic> json) =>
    _$_DailyWeather(
      dateTime: const DateTimeConverter().fromJson(json['dt'] as int?),
      temp: json['temp'] == null
          ? null
          : Temp.fromJson(json['temp'] as Map<String, dynamic>),
      humidity: json['humidity'] as int?,
      pressure: json['pressure'] as int?,
      windSpeed: const IntegerConverter().fromJson(json['wind_speed']),
    );

Map<String, dynamic> _$$_DailyWeatherToJson(_$_DailyWeather instance) =>
    <String, dynamic>{
      'dt': const DateTimeConverter().toJson(instance.dateTime),
      'temp': instance.temp,
      'humidity': instance.humidity,
      'pressure': instance.pressure,
      'wind_speed': const IntegerConverter().toJson(instance.windSpeed),
    };

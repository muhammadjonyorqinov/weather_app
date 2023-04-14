// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HourlyWeather _$$_HourlyWeatherFromJson(Map<String, dynamic> json) =>
    _$_HourlyWeather(
      dateTime: const DateTimeConverter().fromJson(json['dt'] as int?),
      temp: const IntegerConverter().fromJson(json['temp']),
    );

Map<String, dynamic> _$$_HourlyWeatherToJson(_$_HourlyWeather instance) =>
    <String, dynamic>{
      'dt': const DateTimeConverter().toJson(instance.dateTime),
      'temp': const IntegerConverter().toJson(instance.temp),
    };

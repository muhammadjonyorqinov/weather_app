import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/utils/converters/integer_converter.dart';
import '/utils/converters/datetime_converter.dart';
import 'temp.dart';

part 'daily_weather.g.dart';

part 'daily_weather.freezed.dart';

@freezed
class DailyWeather with _$DailyWeather {
  const factory DailyWeather({
    @DateTimeConverter() @JsonKey(name: 'dt') DateTime? dateTime,
    Temp? temp,
    int? humidity,
    int? pressure,
    @JsonKey(name: 'wind_speed')@IntegerConverter()int? windSpeed,
  }) = _DailyWeather;

  factory DailyWeather.fromJson(Map<String, dynamic> json) =>
      _$DailyWeatherFromJson(json);
}




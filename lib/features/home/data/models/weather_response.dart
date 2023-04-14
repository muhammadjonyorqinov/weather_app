import 'package:freezed_annotation/freezed_annotation.dart';
import 'daily_weather.dart';
import 'hourly_weather.dart';

part 'weather_response.g.dart';

part 'weather_response.freezed.dart';

@freezed
class WeatherResponse with _$WeatherResponse {
  const factory WeatherResponse({
    HourlyWeather? current,
    List<HourlyWeather>? hourly,
    List<DailyWeather>? daily,
  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);
}

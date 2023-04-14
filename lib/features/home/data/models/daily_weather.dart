import 'package:freezed_annotation/freezed_annotation.dart';
import '../converters/datetime_converter.dart';
import 'temp.dart';

part 'daily_weather.g.dart';

part 'daily_weather.freezed.dart';

@freezed
class DailyWeather with _$DailyWeather {
  const factory DailyWeather({
    @DateTimeConverter() @JsonKey(name: 'dt') DateTime? dateTime,
    Temp? temp,
  }) = _DailyWeather;

  factory DailyWeather.fromJson(Map<String, dynamic> json) =>
      _$DailyWeatherFromJson(json);
}




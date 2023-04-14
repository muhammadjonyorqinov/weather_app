import 'package:freezed_annotation/freezed_annotation.dart';
import '/utils/converters/datetime_converter.dart';
import '/utils/converters/integer_converter.dart';

part 'hourly_weather.g.dart';

part 'hourly_weather.freezed.dart';
@freezed
class HourlyWeather with _$HourlyWeather {
  const factory HourlyWeather({
    @DateTimeConverter()@JsonKey(name: 'dt') DateTime? dateTime,
     @IntegerConverter()int? temp,
  }) = _HourlyWeather;

  factory HourlyWeather.fromJson(Map<String, dynamic> json) =>
      _$HourlyWeatherFromJson(json);
}
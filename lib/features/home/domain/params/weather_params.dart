import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utils/core/app_constants.dart';
part 'weather_params.g.dart';

part 'weather_params.freezed.dart';
@freezed
class WeatherParams with _$WeatherParams {
  const factory WeatherParams({
    @Default(AppConstants.DEFAULT_LAT) double? lat,
    @Default(AppConstants.DEFAULT_LON) double? lon,
    @Default(AppConstants.API_KEY) String appid,
    @Default(AppConstants.UNITS) String units,
  }) = _WeatherParams;

  factory WeatherParams.fromJson(Map<String, dynamic> json) =>
      _$WeatherParamsFromJson(json);
}
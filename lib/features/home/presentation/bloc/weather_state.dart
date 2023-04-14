part of 'weather_bloc.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class WeatherState with _$WeatherState {
  const factory WeatherState({
    @Default(Statuses.initial) Statuses status,
    Failure? error,
    @Default(WeatherType.hourly) WeatherType type,
    WeatherResponse? data,
    @Default(AppConstants.DEFAULT_GEOCODE) GeoCode geoCode,
  }) = _WeatherState;
}

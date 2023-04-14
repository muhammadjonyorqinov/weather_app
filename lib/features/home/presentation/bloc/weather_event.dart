part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.setType(WeatherType type) = _SetType;

  const factory WeatherEvent.getWeather() = _GetWeather;

  const factory WeatherEvent.setCurrentLocation() = _SetCurrentLocation;
  const factory WeatherEvent.getGeoCode(double lat, double lon) = _GetGeoCode;

}

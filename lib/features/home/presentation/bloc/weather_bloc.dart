import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:location/location.dart';
import '../../domain/params/geocode_params.dart';
import '../../domain/params/weather_params.dart';
import '/features/home/data/models/geocode.dart';
import '/features/home/domain/usecases/get_geocode.dart';
import '/utils/core/app_constants.dart';
import '/features/home/data/models/weather_response.dart';
import '../../domain/usecases/get_weather.dart';
import '/utils/core/enums.dart';
import '/utils/core/failures.dart';

part 'weather_event.dart';

part 'weather_state.dart';

part 'weather_bloc.freezed.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final GetWeather getWeather;
  final GetGeoCode getGeoCode;

  WeatherBloc({required this.getWeather, required this.getGeoCode})
      : super(const WeatherState()) {
    on<_SetType>(_setType);
    on<_GetWeather>(_getWeather);
    on<_SetCurrentLocation>(_setCurrentLocation);
    on<_GetGeoCode>(_getGeoCode);
  }

  FutureOr<void> _setType(
    _SetType event,
    Emitter<WeatherState> emit,
  ) {
    emit(state.copyWith.call(type: event.type));
  }

  FutureOr<void> _getWeather(
    _GetWeather event,
    Emitter<WeatherState> emit,
  ) async {
    emit(state.copyWith.call(status: Statuses.loading));
    final response = await getWeather.call(
      WeatherParams(
        lat: state.geoCode.lat,
        lon: state.geoCode.lon,
      ),
    );
    response.fold(
      (left) => emit(
        state.copyWith.call(
          status: Statuses.error,
          error: left,
        ),
      ),
      (right) => emit(
        state.copyWith.call(
          data: right,
          status: Statuses.success,
        ),
      ),
    );
  }

  FutureOr<void> _setCurrentLocation(
    _SetCurrentLocation event,
    Emitter<WeatherState> emit,
  ) async {
    final location = await getMyLocation();
    if (location?.latitude == state.geoCode.lat &&
        location?.longitude == state.geoCode.lon) {
      return;
    }
    add(
      WeatherEvent.getGeoCode(
        location?.latitude ?? AppConstants.DEFAULT_LAT,
        location?.longitude ?? AppConstants.DEFAULT_LON,
      ),
    );
  }

  Future<LocationData?> getMyLocation() async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;
    LocationData locationData;
    final Location location = Location();
    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return null;
      }
    }
    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return null;
      }
    }
    locationData = await location.getLocation();
    return locationData;
  }

  FutureOr<void> _getGeoCode(
    _GetGeoCode event,
    Emitter<WeatherState> emit,
  ) async {
    emit(
      state.copyWith.call(
        status: Statuses.loading,
      ),
    );
    final response = await getGeoCode.call(
      GeoCodeParams(
        lat: event.lat,
        lon: event.lon,
      ),
    );
    response.fold(
      (left) => emit(
        state.copyWith.call(
          status: Statuses.error,
          error: left,
        ),
      ),
      (right) {
        emit(
          state.copyWith.call(
            geoCode: right ?? AppConstants.DEFAULT_GEOCODE,
          ),
        );
        add(const WeatherEvent.getWeather());
      },
    );
  }
}

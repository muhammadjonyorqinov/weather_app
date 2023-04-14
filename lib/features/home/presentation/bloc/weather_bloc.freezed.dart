// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WeatherType type) setType,
    required TResult Function() getWeather,
    required TResult Function() setCurrentLocation,
    required TResult Function(double lat, double lon) getGeoCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WeatherType type)? setType,
    TResult? Function()? getWeather,
    TResult? Function()? setCurrentLocation,
    TResult? Function(double lat, double lon)? getGeoCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WeatherType type)? setType,
    TResult Function()? getWeather,
    TResult Function()? setCurrentLocation,
    TResult Function(double lat, double lon)? getGeoCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetType value) setType,
    required TResult Function(_GetWeather value) getWeather,
    required TResult Function(_SetCurrentLocation value) setCurrentLocation,
    required TResult Function(_GetGeoCode value) getGeoCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetType value)? setType,
    TResult? Function(_GetWeather value)? getWeather,
    TResult? Function(_SetCurrentLocation value)? setCurrentLocation,
    TResult? Function(_GetGeoCode value)? getGeoCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetType value)? setType,
    TResult Function(_GetWeather value)? getWeather,
    TResult Function(_SetCurrentLocation value)? setCurrentLocation,
    TResult Function(_GetGeoCode value)? getGeoCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SetTypeCopyWith<$Res> {
  factory _$$_SetTypeCopyWith(
          _$_SetType value, $Res Function(_$_SetType) then) =
      __$$_SetTypeCopyWithImpl<$Res>;
  @useResult
  $Res call({WeatherType type});
}

/// @nodoc
class __$$_SetTypeCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$_SetType>
    implements _$$_SetTypeCopyWith<$Res> {
  __$$_SetTypeCopyWithImpl(_$_SetType _value, $Res Function(_$_SetType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$_SetType(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WeatherType,
    ));
  }
}

/// @nodoc

class _$_SetType implements _SetType {
  const _$_SetType(this.type);

  @override
  final WeatherType type;

  @override
  String toString() {
    return 'WeatherEvent.setType(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetType &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetTypeCopyWith<_$_SetType> get copyWith =>
      __$$_SetTypeCopyWithImpl<_$_SetType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WeatherType type) setType,
    required TResult Function() getWeather,
    required TResult Function() setCurrentLocation,
    required TResult Function(double lat, double lon) getGeoCode,
  }) {
    return setType(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WeatherType type)? setType,
    TResult? Function()? getWeather,
    TResult? Function()? setCurrentLocation,
    TResult? Function(double lat, double lon)? getGeoCode,
  }) {
    return setType?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WeatherType type)? setType,
    TResult Function()? getWeather,
    TResult Function()? setCurrentLocation,
    TResult Function(double lat, double lon)? getGeoCode,
    required TResult orElse(),
  }) {
    if (setType != null) {
      return setType(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetType value) setType,
    required TResult Function(_GetWeather value) getWeather,
    required TResult Function(_SetCurrentLocation value) setCurrentLocation,
    required TResult Function(_GetGeoCode value) getGeoCode,
  }) {
    return setType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetType value)? setType,
    TResult? Function(_GetWeather value)? getWeather,
    TResult? Function(_SetCurrentLocation value)? setCurrentLocation,
    TResult? Function(_GetGeoCode value)? getGeoCode,
  }) {
    return setType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetType value)? setType,
    TResult Function(_GetWeather value)? getWeather,
    TResult Function(_SetCurrentLocation value)? setCurrentLocation,
    TResult Function(_GetGeoCode value)? getGeoCode,
    required TResult orElse(),
  }) {
    if (setType != null) {
      return setType(this);
    }
    return orElse();
  }
}

abstract class _SetType implements WeatherEvent {
  const factory _SetType(final WeatherType type) = _$_SetType;

  WeatherType get type;
  @JsonKey(ignore: true)
  _$$_SetTypeCopyWith<_$_SetType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetWeatherCopyWith<$Res> {
  factory _$$_GetWeatherCopyWith(
          _$_GetWeather value, $Res Function(_$_GetWeather) then) =
      __$$_GetWeatherCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetWeatherCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$_GetWeather>
    implements _$$_GetWeatherCopyWith<$Res> {
  __$$_GetWeatherCopyWithImpl(
      _$_GetWeather _value, $Res Function(_$_GetWeather) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetWeather implements _GetWeather {
  const _$_GetWeather();

  @override
  String toString() {
    return 'WeatherEvent.getWeather()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetWeather);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WeatherType type) setType,
    required TResult Function() getWeather,
    required TResult Function() setCurrentLocation,
    required TResult Function(double lat, double lon) getGeoCode,
  }) {
    return getWeather();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WeatherType type)? setType,
    TResult? Function()? getWeather,
    TResult? Function()? setCurrentLocation,
    TResult? Function(double lat, double lon)? getGeoCode,
  }) {
    return getWeather?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WeatherType type)? setType,
    TResult Function()? getWeather,
    TResult Function()? setCurrentLocation,
    TResult Function(double lat, double lon)? getGeoCode,
    required TResult orElse(),
  }) {
    if (getWeather != null) {
      return getWeather();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetType value) setType,
    required TResult Function(_GetWeather value) getWeather,
    required TResult Function(_SetCurrentLocation value) setCurrentLocation,
    required TResult Function(_GetGeoCode value) getGeoCode,
  }) {
    return getWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetType value)? setType,
    TResult? Function(_GetWeather value)? getWeather,
    TResult? Function(_SetCurrentLocation value)? setCurrentLocation,
    TResult? Function(_GetGeoCode value)? getGeoCode,
  }) {
    return getWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetType value)? setType,
    TResult Function(_GetWeather value)? getWeather,
    TResult Function(_SetCurrentLocation value)? setCurrentLocation,
    TResult Function(_GetGeoCode value)? getGeoCode,
    required TResult orElse(),
  }) {
    if (getWeather != null) {
      return getWeather(this);
    }
    return orElse();
  }
}

abstract class _GetWeather implements WeatherEvent {
  const factory _GetWeather() = _$_GetWeather;
}

/// @nodoc
abstract class _$$_SetCurrentLocationCopyWith<$Res> {
  factory _$$_SetCurrentLocationCopyWith(_$_SetCurrentLocation value,
          $Res Function(_$_SetCurrentLocation) then) =
      __$$_SetCurrentLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SetCurrentLocationCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$_SetCurrentLocation>
    implements _$$_SetCurrentLocationCopyWith<$Res> {
  __$$_SetCurrentLocationCopyWithImpl(
      _$_SetCurrentLocation _value, $Res Function(_$_SetCurrentLocation) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SetCurrentLocation implements _SetCurrentLocation {
  const _$_SetCurrentLocation();

  @override
  String toString() {
    return 'WeatherEvent.setCurrentLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SetCurrentLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WeatherType type) setType,
    required TResult Function() getWeather,
    required TResult Function() setCurrentLocation,
    required TResult Function(double lat, double lon) getGeoCode,
  }) {
    return setCurrentLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WeatherType type)? setType,
    TResult? Function()? getWeather,
    TResult? Function()? setCurrentLocation,
    TResult? Function(double lat, double lon)? getGeoCode,
  }) {
    return setCurrentLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WeatherType type)? setType,
    TResult Function()? getWeather,
    TResult Function()? setCurrentLocation,
    TResult Function(double lat, double lon)? getGeoCode,
    required TResult orElse(),
  }) {
    if (setCurrentLocation != null) {
      return setCurrentLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetType value) setType,
    required TResult Function(_GetWeather value) getWeather,
    required TResult Function(_SetCurrentLocation value) setCurrentLocation,
    required TResult Function(_GetGeoCode value) getGeoCode,
  }) {
    return setCurrentLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetType value)? setType,
    TResult? Function(_GetWeather value)? getWeather,
    TResult? Function(_SetCurrentLocation value)? setCurrentLocation,
    TResult? Function(_GetGeoCode value)? getGeoCode,
  }) {
    return setCurrentLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetType value)? setType,
    TResult Function(_GetWeather value)? getWeather,
    TResult Function(_SetCurrentLocation value)? setCurrentLocation,
    TResult Function(_GetGeoCode value)? getGeoCode,
    required TResult orElse(),
  }) {
    if (setCurrentLocation != null) {
      return setCurrentLocation(this);
    }
    return orElse();
  }
}

abstract class _SetCurrentLocation implements WeatherEvent {
  const factory _SetCurrentLocation() = _$_SetCurrentLocation;
}

/// @nodoc
abstract class _$$_GetGeoCodeCopyWith<$Res> {
  factory _$$_GetGeoCodeCopyWith(
          _$_GetGeoCode value, $Res Function(_$_GetGeoCode) then) =
      __$$_GetGeoCodeCopyWithImpl<$Res>;
  @useResult
  $Res call({double lat, double lon});
}

/// @nodoc
class __$$_GetGeoCodeCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$_GetGeoCode>
    implements _$$_GetGeoCodeCopyWith<$Res> {
  __$$_GetGeoCodeCopyWithImpl(
      _$_GetGeoCode _value, $Res Function(_$_GetGeoCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_$_GetGeoCode(
      null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_GetGeoCode implements _GetGeoCode {
  const _$_GetGeoCode(this.lat, this.lon);

  @override
  final double lat;
  @override
  final double lon;

  @override
  String toString() {
    return 'WeatherEvent.getGeoCode(lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetGeoCode &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetGeoCodeCopyWith<_$_GetGeoCode> get copyWith =>
      __$$_GetGeoCodeCopyWithImpl<_$_GetGeoCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WeatherType type) setType,
    required TResult Function() getWeather,
    required TResult Function() setCurrentLocation,
    required TResult Function(double lat, double lon) getGeoCode,
  }) {
    return getGeoCode(lat, lon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WeatherType type)? setType,
    TResult? Function()? getWeather,
    TResult? Function()? setCurrentLocation,
    TResult? Function(double lat, double lon)? getGeoCode,
  }) {
    return getGeoCode?.call(lat, lon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WeatherType type)? setType,
    TResult Function()? getWeather,
    TResult Function()? setCurrentLocation,
    TResult Function(double lat, double lon)? getGeoCode,
    required TResult orElse(),
  }) {
    if (getGeoCode != null) {
      return getGeoCode(lat, lon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetType value) setType,
    required TResult Function(_GetWeather value) getWeather,
    required TResult Function(_SetCurrentLocation value) setCurrentLocation,
    required TResult Function(_GetGeoCode value) getGeoCode,
  }) {
    return getGeoCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetType value)? setType,
    TResult? Function(_GetWeather value)? getWeather,
    TResult? Function(_SetCurrentLocation value)? setCurrentLocation,
    TResult? Function(_GetGeoCode value)? getGeoCode,
  }) {
    return getGeoCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetType value)? setType,
    TResult Function(_GetWeather value)? getWeather,
    TResult Function(_SetCurrentLocation value)? setCurrentLocation,
    TResult Function(_GetGeoCode value)? getGeoCode,
    required TResult orElse(),
  }) {
    if (getGeoCode != null) {
      return getGeoCode(this);
    }
    return orElse();
  }
}

abstract class _GetGeoCode implements WeatherEvent {
  const factory _GetGeoCode(final double lat, final double lon) = _$_GetGeoCode;

  double get lat;
  double get lon;
  @JsonKey(ignore: true)
  _$$_GetGeoCodeCopyWith<_$_GetGeoCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherState {
  Statuses get status => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;
  WeatherType get type => throw _privateConstructorUsedError;
  WeatherResponse? get data => throw _privateConstructorUsedError;
  GeoCode get geoCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
  @useResult
  $Res call(
      {Statuses status,
      Failure? error,
      WeatherType type,
      WeatherResponse? data,
      GeoCode geoCode});

  $WeatherResponseCopyWith<$Res>? get data;
  $GeoCodeCopyWith<$Res> get geoCode;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? type = null,
    Object? data = freezed,
    Object? geoCode = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Statuses,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WeatherType,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WeatherResponse?,
      geoCode: null == geoCode
          ? _value.geoCode
          : geoCode // ignore: cast_nullable_to_non_nullable
              as GeoCode,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $WeatherResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoCodeCopyWith<$Res> get geoCode {
    return $GeoCodeCopyWith<$Res>(_value.geoCode, (value) {
      return _then(_value.copyWith(geoCode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherStateCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$_WeatherStateCopyWith(
          _$_WeatherState value, $Res Function(_$_WeatherState) then) =
      __$$_WeatherStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Statuses status,
      Failure? error,
      WeatherType type,
      WeatherResponse? data,
      GeoCode geoCode});

  @override
  $WeatherResponseCopyWith<$Res>? get data;
  @override
  $GeoCodeCopyWith<$Res> get geoCode;
}

/// @nodoc
class __$$_WeatherStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$_WeatherState>
    implements _$$_WeatherStateCopyWith<$Res> {
  __$$_WeatherStateCopyWithImpl(
      _$_WeatherState _value, $Res Function(_$_WeatherState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? type = null,
    Object? data = freezed,
    Object? geoCode = null,
  }) {
    return _then(_$_WeatherState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Statuses,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WeatherType,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WeatherResponse?,
      geoCode: null == geoCode
          ? _value.geoCode
          : geoCode // ignore: cast_nullable_to_non_nullable
              as GeoCode,
    ));
  }
}

/// @nodoc

class _$_WeatherState implements _WeatherState {
  const _$_WeatherState(
      {this.status = Statuses.initial,
      this.error,
      this.type = WeatherType.hourly,
      this.data,
      this.geoCode = AppConstants.DEFAULT_GEOCODE});

  @override
  @JsonKey()
  final Statuses status;
  @override
  final Failure? error;
  @override
  @JsonKey()
  final WeatherType type;
  @override
  final WeatherResponse? data;
  @override
  @JsonKey()
  final GeoCode geoCode;

  @override
  String toString() {
    return 'WeatherState(status: $status, error: $error, type: $type, data: $data, geoCode: $geoCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.geoCode, geoCode) || other.geoCode == geoCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, error, type, data, geoCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherStateCopyWith<_$_WeatherState> get copyWith =>
      __$$_WeatherStateCopyWithImpl<_$_WeatherState>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  const factory _WeatherState(
      {final Statuses status,
      final Failure? error,
      final WeatherType type,
      final WeatherResponse? data,
      final GeoCode geoCode}) = _$_WeatherState;

  @override
  Statuses get status;
  @override
  Failure? get error;
  @override
  WeatherType get type;
  @override
  WeatherResponse? get data;
  @override
  GeoCode get geoCode;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherStateCopyWith<_$_WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

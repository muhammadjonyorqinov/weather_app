// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DailyWeather _$DailyWeatherFromJson(Map<String, dynamic> json) {
  return _DailyWeather.fromJson(json);
}

/// @nodoc
mixin _$DailyWeather {
  @DateTimeConverter()
  @JsonKey(name: 'dt')
  DateTime? get dateTime => throw _privateConstructorUsedError;
  Temp? get temp => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;
  int? get pressure => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed')
  @IntegerConverter()
  int? get windSpeed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyWeatherCopyWith<DailyWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyWeatherCopyWith<$Res> {
  factory $DailyWeatherCopyWith(
          DailyWeather value, $Res Function(DailyWeather) then) =
      _$DailyWeatherCopyWithImpl<$Res, DailyWeather>;
  @useResult
  $Res call(
      {@DateTimeConverter() @JsonKey(name: 'dt') DateTime? dateTime,
      Temp? temp,
      int? humidity,
      int? pressure,
      @JsonKey(name: 'wind_speed') @IntegerConverter() int? windSpeed});

  $TempCopyWith<$Res>? get temp;
}

/// @nodoc
class _$DailyWeatherCopyWithImpl<$Res, $Val extends DailyWeather>
    implements $DailyWeatherCopyWith<$Res> {
  _$DailyWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = freezed,
    Object? temp = freezed,
    Object? humidity = freezed,
    Object? pressure = freezed,
    Object? windSpeed = freezed,
  }) {
    return _then(_value.copyWith(
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as Temp?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TempCopyWith<$Res>? get temp {
    if (_value.temp == null) {
      return null;
    }

    return $TempCopyWith<$Res>(_value.temp!, (value) {
      return _then(_value.copyWith(temp: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DailyWeatherCopyWith<$Res>
    implements $DailyWeatherCopyWith<$Res> {
  factory _$$_DailyWeatherCopyWith(
          _$_DailyWeather value, $Res Function(_$_DailyWeather) then) =
      __$$_DailyWeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DateTimeConverter() @JsonKey(name: 'dt') DateTime? dateTime,
      Temp? temp,
      int? humidity,
      int? pressure,
      @JsonKey(name: 'wind_speed') @IntegerConverter() int? windSpeed});

  @override
  $TempCopyWith<$Res>? get temp;
}

/// @nodoc
class __$$_DailyWeatherCopyWithImpl<$Res>
    extends _$DailyWeatherCopyWithImpl<$Res, _$_DailyWeather>
    implements _$$_DailyWeatherCopyWith<$Res> {
  __$$_DailyWeatherCopyWithImpl(
      _$_DailyWeather _value, $Res Function(_$_DailyWeather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = freezed,
    Object? temp = freezed,
    Object? humidity = freezed,
    Object? pressure = freezed,
    Object? windSpeed = freezed,
  }) {
    return _then(_$_DailyWeather(
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as Temp?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DailyWeather implements _DailyWeather {
  const _$_DailyWeather(
      {@DateTimeConverter() @JsonKey(name: 'dt') this.dateTime,
      this.temp,
      this.humidity,
      this.pressure,
      @JsonKey(name: 'wind_speed') @IntegerConverter() this.windSpeed});

  factory _$_DailyWeather.fromJson(Map<String, dynamic> json) =>
      _$$_DailyWeatherFromJson(json);

  @override
  @DateTimeConverter()
  @JsonKey(name: 'dt')
  final DateTime? dateTime;
  @override
  final Temp? temp;
  @override
  final int? humidity;
  @override
  final int? pressure;
  @override
  @JsonKey(name: 'wind_speed')
  @IntegerConverter()
  final int? windSpeed;

  @override
  String toString() {
    return 'DailyWeather(dateTime: $dateTime, temp: $temp, humidity: $humidity, pressure: $pressure, windSpeed: $windSpeed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DailyWeather &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, dateTime, temp, humidity, pressure, windSpeed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DailyWeatherCopyWith<_$_DailyWeather> get copyWith =>
      __$$_DailyWeatherCopyWithImpl<_$_DailyWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DailyWeatherToJson(
      this,
    );
  }
}

abstract class _DailyWeather implements DailyWeather {
  const factory _DailyWeather(
      {@DateTimeConverter()
      @JsonKey(name: 'dt')
          final DateTime? dateTime,
      final Temp? temp,
      final int? humidity,
      final int? pressure,
      @JsonKey(name: 'wind_speed')
      @IntegerConverter()
          final int? windSpeed}) = _$_DailyWeather;

  factory _DailyWeather.fromJson(Map<String, dynamic> json) =
      _$_DailyWeather.fromJson;

  @override
  @DateTimeConverter()
  @JsonKey(name: 'dt')
  DateTime? get dateTime;
  @override
  Temp? get temp;
  @override
  int? get humidity;
  @override
  int? get pressure;
  @override
  @JsonKey(name: 'wind_speed')
  @IntegerConverter()
  int? get windSpeed;
  @override
  @JsonKey(ignore: true)
  _$$_DailyWeatherCopyWith<_$_DailyWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

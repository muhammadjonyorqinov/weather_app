// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hourly_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HourlyWeather _$HourlyWeatherFromJson(Map<String, dynamic> json) {
  return _HourlyWeather.fromJson(json);
}

/// @nodoc
mixin _$HourlyWeather {
  @DateTimeConverter()
  @JsonKey(name: 'dt')
  DateTime? get dateTime => throw _privateConstructorUsedError;
  @IntegerConverter()
  int? get temp => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;
  int? get pressure => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed')
  @IntegerConverter()
  int? get windSpeed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourlyWeatherCopyWith<HourlyWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyWeatherCopyWith<$Res> {
  factory $HourlyWeatherCopyWith(
          HourlyWeather value, $Res Function(HourlyWeather) then) =
      _$HourlyWeatherCopyWithImpl<$Res, HourlyWeather>;
  @useResult
  $Res call(
      {@DateTimeConverter() @JsonKey(name: 'dt') DateTime? dateTime,
      @IntegerConverter() int? temp,
      int? humidity,
      int? pressure,
      @JsonKey(name: 'wind_speed') @IntegerConverter() int? windSpeed});
}

/// @nodoc
class _$HourlyWeatherCopyWithImpl<$Res, $Val extends HourlyWeather>
    implements $HourlyWeatherCopyWith<$Res> {
  _$HourlyWeatherCopyWithImpl(this._value, this._then);

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
              as int?,
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
}

/// @nodoc
abstract class _$$_HourlyWeatherCopyWith<$Res>
    implements $HourlyWeatherCopyWith<$Res> {
  factory _$$_HourlyWeatherCopyWith(
          _$_HourlyWeather value, $Res Function(_$_HourlyWeather) then) =
      __$$_HourlyWeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DateTimeConverter() @JsonKey(name: 'dt') DateTime? dateTime,
      @IntegerConverter() int? temp,
      int? humidity,
      int? pressure,
      @JsonKey(name: 'wind_speed') @IntegerConverter() int? windSpeed});
}

/// @nodoc
class __$$_HourlyWeatherCopyWithImpl<$Res>
    extends _$HourlyWeatherCopyWithImpl<$Res, _$_HourlyWeather>
    implements _$$_HourlyWeatherCopyWith<$Res> {
  __$$_HourlyWeatherCopyWithImpl(
      _$_HourlyWeather _value, $Res Function(_$_HourlyWeather) _then)
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
    return _then(_$_HourlyWeather(
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$_HourlyWeather implements _HourlyWeather {
  const _$_HourlyWeather(
      {@DateTimeConverter() @JsonKey(name: 'dt') this.dateTime,
      @IntegerConverter() this.temp,
      this.humidity,
      this.pressure,
      @JsonKey(name: 'wind_speed') @IntegerConverter() this.windSpeed});

  factory _$_HourlyWeather.fromJson(Map<String, dynamic> json) =>
      _$$_HourlyWeatherFromJson(json);

  @override
  @DateTimeConverter()
  @JsonKey(name: 'dt')
  final DateTime? dateTime;
  @override
  @IntegerConverter()
  final int? temp;
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
    return 'HourlyWeather(dateTime: $dateTime, temp: $temp, humidity: $humidity, pressure: $pressure, windSpeed: $windSpeed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HourlyWeather &&
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
  _$$_HourlyWeatherCopyWith<_$_HourlyWeather> get copyWith =>
      __$$_HourlyWeatherCopyWithImpl<_$_HourlyWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HourlyWeatherToJson(
      this,
    );
  }
}

abstract class _HourlyWeather implements HourlyWeather {
  const factory _HourlyWeather(
      {@DateTimeConverter()
      @JsonKey(name: 'dt')
          final DateTime? dateTime,
      @IntegerConverter()
          final int? temp,
      final int? humidity,
      final int? pressure,
      @JsonKey(name: 'wind_speed')
      @IntegerConverter()
          final int? windSpeed}) = _$_HourlyWeather;

  factory _HourlyWeather.fromJson(Map<String, dynamic> json) =
      _$_HourlyWeather.fromJson;

  @override
  @DateTimeConverter()
  @JsonKey(name: 'dt')
  DateTime? get dateTime;
  @override
  @IntegerConverter()
  int? get temp;
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
  _$$_HourlyWeatherCopyWith<_$_HourlyWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

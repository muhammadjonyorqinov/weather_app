// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) {
  return _WeatherResponse.fromJson(json);
}

/// @nodoc
mixin _$WeatherResponse {
  HourlyWeather? get current => throw _privateConstructorUsedError;
  List<HourlyWeather>? get hourly => throw _privateConstructorUsedError;
  List<DailyWeather>? get daily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherResponseCopyWith<WeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherResponseCopyWith<$Res> {
  factory $WeatherResponseCopyWith(
          WeatherResponse value, $Res Function(WeatherResponse) then) =
      _$WeatherResponseCopyWithImpl<$Res, WeatherResponse>;
  @useResult
  $Res call(
      {HourlyWeather? current,
      List<HourlyWeather>? hourly,
      List<DailyWeather>? daily});

  $HourlyWeatherCopyWith<$Res>? get current;
}

/// @nodoc
class _$WeatherResponseCopyWithImpl<$Res, $Val extends WeatherResponse>
    implements $WeatherResponseCopyWith<$Res> {
  _$WeatherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = freezed,
    Object? hourly = freezed,
    Object? daily = freezed,
  }) {
    return _then(_value.copyWith(
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as HourlyWeather?,
      hourly: freezed == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<HourlyWeather>?,
      daily: freezed == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<DailyWeather>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HourlyWeatherCopyWith<$Res>? get current {
    if (_value.current == null) {
      return null;
    }

    return $HourlyWeatherCopyWith<$Res>(_value.current!, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherResponseCopyWith<$Res>
    implements $WeatherResponseCopyWith<$Res> {
  factory _$$_WeatherResponseCopyWith(
          _$_WeatherResponse value, $Res Function(_$_WeatherResponse) then) =
      __$$_WeatherResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {HourlyWeather? current,
      List<HourlyWeather>? hourly,
      List<DailyWeather>? daily});

  @override
  $HourlyWeatherCopyWith<$Res>? get current;
}

/// @nodoc
class __$$_WeatherResponseCopyWithImpl<$Res>
    extends _$WeatherResponseCopyWithImpl<$Res, _$_WeatherResponse>
    implements _$$_WeatherResponseCopyWith<$Res> {
  __$$_WeatherResponseCopyWithImpl(
      _$_WeatherResponse _value, $Res Function(_$_WeatherResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = freezed,
    Object? hourly = freezed,
    Object? daily = freezed,
  }) {
    return _then(_$_WeatherResponse(
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as HourlyWeather?,
      hourly: freezed == hourly
          ? _value._hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<HourlyWeather>?,
      daily: freezed == daily
          ? _value._daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<DailyWeather>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherResponse implements _WeatherResponse {
  const _$_WeatherResponse(
      {this.current,
      final List<HourlyWeather>? hourly,
      final List<DailyWeather>? daily})
      : _hourly = hourly,
        _daily = daily;

  factory _$_WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherResponseFromJson(json);

  @override
  final HourlyWeather? current;
  final List<HourlyWeather>? _hourly;
  @override
  List<HourlyWeather>? get hourly {
    final value = _hourly;
    if (value == null) return null;
    if (_hourly is EqualUnmodifiableListView) return _hourly;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DailyWeather>? _daily;
  @override
  List<DailyWeather>? get daily {
    final value = _daily;
    if (value == null) return null;
    if (_daily is EqualUnmodifiableListView) return _daily;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WeatherResponse(current: $current, hourly: $hourly, daily: $daily)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherResponse &&
            (identical(other.current, current) || other.current == current) &&
            const DeepCollectionEquality().equals(other._hourly, _hourly) &&
            const DeepCollectionEquality().equals(other._daily, _daily));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      current,
      const DeepCollectionEquality().hash(_hourly),
      const DeepCollectionEquality().hash(_daily));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherResponseCopyWith<_$_WeatherResponse> get copyWith =>
      __$$_WeatherResponseCopyWithImpl<_$_WeatherResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherResponseToJson(
      this,
    );
  }
}

abstract class _WeatherResponse implements WeatherResponse {
  const factory _WeatherResponse(
      {final HourlyWeather? current,
      final List<HourlyWeather>? hourly,
      final List<DailyWeather>? daily}) = _$_WeatherResponse;

  factory _WeatherResponse.fromJson(Map<String, dynamic> json) =
      _$_WeatherResponse.fromJson;

  @override
  HourlyWeather? get current;
  @override
  List<HourlyWeather>? get hourly;
  @override
  List<DailyWeather>? get daily;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherResponseCopyWith<_$_WeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

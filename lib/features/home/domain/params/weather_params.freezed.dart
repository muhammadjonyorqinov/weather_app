// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherParams _$WeatherParamsFromJson(Map<String, dynamic> json) {
  return _WeatherParams.fromJson(json);
}

/// @nodoc
mixin _$WeatherParams {
  double? get lat => throw _privateConstructorUsedError;
  double? get lon => throw _privateConstructorUsedError;
  String get appid => throw _privateConstructorUsedError;
  String get units => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherParamsCopyWith<WeatherParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherParamsCopyWith<$Res> {
  factory $WeatherParamsCopyWith(
          WeatherParams value, $Res Function(WeatherParams) then) =
      _$WeatherParamsCopyWithImpl<$Res, WeatherParams>;
  @useResult
  $Res call({double? lat, double? lon, String appid, String units});
}

/// @nodoc
class _$WeatherParamsCopyWithImpl<$Res, $Val extends WeatherParams>
    implements $WeatherParamsCopyWith<$Res> {
  _$WeatherParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? appid = null,
    Object? units = null,
  }) {
    return _then(_value.copyWith(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      appid: null == appid
          ? _value.appid
          : appid // ignore: cast_nullable_to_non_nullable
              as String,
      units: null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherParamsCopyWith<$Res>
    implements $WeatherParamsCopyWith<$Res> {
  factory _$$_WeatherParamsCopyWith(
          _$_WeatherParams value, $Res Function(_$_WeatherParams) then) =
      __$$_WeatherParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? lat, double? lon, String appid, String units});
}

/// @nodoc
class __$$_WeatherParamsCopyWithImpl<$Res>
    extends _$WeatherParamsCopyWithImpl<$Res, _$_WeatherParams>
    implements _$$_WeatherParamsCopyWith<$Res> {
  __$$_WeatherParamsCopyWithImpl(
      _$_WeatherParams _value, $Res Function(_$_WeatherParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? appid = null,
    Object? units = null,
  }) {
    return _then(_$_WeatherParams(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      appid: null == appid
          ? _value.appid
          : appid // ignore: cast_nullable_to_non_nullable
              as String,
      units: null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherParams implements _WeatherParams {
  const _$_WeatherParams(
      {this.lat = AppConstants.DEFAULT_LAT,
      this.lon = AppConstants.DEFAULT_LON,
      this.appid = AppConstants.API_KEY,
      this.units = AppConstants.UNITS});

  factory _$_WeatherParams.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherParamsFromJson(json);

  @override
  @JsonKey()
  final double? lat;
  @override
  @JsonKey()
  final double? lon;
  @override
  @JsonKey()
  final String appid;
  @override
  @JsonKey()
  final String units;

  @override
  String toString() {
    return 'WeatherParams(lat: $lat, lon: $lon, appid: $appid, units: $units)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherParams &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.appid, appid) || other.appid == appid) &&
            (identical(other.units, units) || other.units == units));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lon, appid, units);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherParamsCopyWith<_$_WeatherParams> get copyWith =>
      __$$_WeatherParamsCopyWithImpl<_$_WeatherParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherParamsToJson(
      this,
    );
  }
}

abstract class _WeatherParams implements WeatherParams {
  const factory _WeatherParams(
      {final double? lat,
      final double? lon,
      final String appid,
      final String units}) = _$_WeatherParams;

  factory _WeatherParams.fromJson(Map<String, dynamic> json) =
      _$_WeatherParams.fromJson;

  @override
  double? get lat;
  @override
  double? get lon;
  @override
  String get appid;
  @override
  String get units;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherParamsCopyWith<_$_WeatherParams> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geocode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeoCode _$GeoCodeFromJson(Map<String, dynamic> json) {
  return _GeoCode.fromJson(json);
}

/// @nodoc
mixin _$GeoCode {
  String? get name => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lon => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoCodeCopyWith<GeoCode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoCodeCopyWith<$Res> {
  factory $GeoCodeCopyWith(GeoCode value, $Res Function(GeoCode) then) =
      _$GeoCodeCopyWithImpl<$Res, GeoCode>;
  @useResult
  $Res call(
      {String? name, double? lat, double? lon, String? country, String? state});
}

/// @nodoc
class _$GeoCodeCopyWithImpl<$Res, $Val extends GeoCode>
    implements $GeoCodeCopyWith<$Res> {
  _$GeoCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? country = freezed,
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeoCodeCopyWith<$Res> implements $GeoCodeCopyWith<$Res> {
  factory _$$_GeoCodeCopyWith(
          _$_GeoCode value, $Res Function(_$_GeoCode) then) =
      __$$_GeoCodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name, double? lat, double? lon, String? country, String? state});
}

/// @nodoc
class __$$_GeoCodeCopyWithImpl<$Res>
    extends _$GeoCodeCopyWithImpl<$Res, _$_GeoCode>
    implements _$$_GeoCodeCopyWith<$Res> {
  __$$_GeoCodeCopyWithImpl(_$_GeoCode _value, $Res Function(_$_GeoCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? country = freezed,
    Object? state = freezed,
  }) {
    return _then(_$_GeoCode(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeoCode implements _GeoCode {
  const _$_GeoCode({this.name, this.lat, this.lon, this.country, this.state});

  factory _$_GeoCode.fromJson(Map<String, dynamic> json) =>
      _$$_GeoCodeFromJson(json);

  @override
  final String? name;
  @override
  final double? lat;
  @override
  final double? lon;
  @override
  final String? country;
  @override
  final String? state;

  @override
  String toString() {
    return 'GeoCode(name: $name, lat: $lat, lon: $lon, country: $country, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeoCode &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, lat, lon, country, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeoCodeCopyWith<_$_GeoCode> get copyWith =>
      __$$_GeoCodeCopyWithImpl<_$_GeoCode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeoCodeToJson(
      this,
    );
  }
}

abstract class _GeoCode implements GeoCode {
  const factory _GeoCode(
      {final String? name,
      final double? lat,
      final double? lon,
      final String? country,
      final String? state}) = _$_GeoCode;

  factory _GeoCode.fromJson(Map<String, dynamic> json) = _$_GeoCode.fromJson;

  @override
  String? get name;
  @override
  double? get lat;
  @override
  double? get lon;
  @override
  String? get country;
  @override
  String? get state;
  @override
  @JsonKey(ignore: true)
  _$$_GeoCodeCopyWith<_$_GeoCode> get copyWith =>
      throw _privateConstructorUsedError;
}

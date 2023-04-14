// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Temp _$TempFromJson(Map<String, dynamic> json) {
  return _Temp.fromJson(json);
}

/// @nodoc
mixin _$Temp {
  @IntegerConverter()
  int? get day => throw _privateConstructorUsedError;
  @IntegerConverter()
  int? get night => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TempCopyWith<Temp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempCopyWith<$Res> {
  factory $TempCopyWith(Temp value, $Res Function(Temp) then) =
      _$TempCopyWithImpl<$Res, Temp>;
  @useResult
  $Res call({@IntegerConverter() int? day, @IntegerConverter() int? night});
}

/// @nodoc
class _$TempCopyWithImpl<$Res, $Val extends Temp>
    implements $TempCopyWith<$Res> {
  _$TempCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? night = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      night: freezed == night
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TempCopyWith<$Res> implements $TempCopyWith<$Res> {
  factory _$$_TempCopyWith(_$_Temp value, $Res Function(_$_Temp) then) =
      __$$_TempCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@IntegerConverter() int? day, @IntegerConverter() int? night});
}

/// @nodoc
class __$$_TempCopyWithImpl<$Res> extends _$TempCopyWithImpl<$Res, _$_Temp>
    implements _$$_TempCopyWith<$Res> {
  __$$_TempCopyWithImpl(_$_Temp _value, $Res Function(_$_Temp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? night = freezed,
  }) {
    return _then(_$_Temp(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      night: freezed == night
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Temp implements _Temp {
  const _$_Temp({@IntegerConverter() this.day, @IntegerConverter() this.night});

  factory _$_Temp.fromJson(Map<String, dynamic> json) => _$$_TempFromJson(json);

  @override
  @IntegerConverter()
  final int? day;
  @override
  @IntegerConverter()
  final int? night;

  @override
  String toString() {
    return 'Temp(day: $day, night: $night)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Temp &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.night, night) || other.night == night));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, night);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TempCopyWith<_$_Temp> get copyWith =>
      __$$_TempCopyWithImpl<_$_Temp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TempToJson(
      this,
    );
  }
}

abstract class _Temp implements Temp {
  const factory _Temp(
      {@IntegerConverter() final int? day,
      @IntegerConverter() final int? night}) = _$_Temp;

  factory _Temp.fromJson(Map<String, dynamic> json) = _$_Temp.fromJson;

  @override
  @IntegerConverter()
  int? get day;
  @override
  @IntegerConverter()
  int? get night;
  @override
  @JsonKey(ignore: true)
  _$$_TempCopyWith<_$_Temp> get copyWith => throw _privateConstructorUsedError;
}

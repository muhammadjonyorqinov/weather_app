// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Temp _$$_TempFromJson(Map<String, dynamic> json) => _$_Temp(
      day: const IntegerConverter().fromJson(json['day']),
      night: const IntegerConverter().fromJson(json['night']),
    );

Map<String, dynamic> _$$_TempToJson(_$_Temp instance) => <String, dynamic>{
      'day': const IntegerConverter().toJson(instance.day),
      'night': const IntegerConverter().toJson(instance.night),
    };

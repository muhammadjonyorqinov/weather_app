// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeoCode _$$_GeoCodeFromJson(Map<String, dynamic> json) => _$_GeoCode(
      name: json['name'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      country: json['country'] as String?,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$$_GeoCodeToJson(_$_GeoCode instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lat': instance.lat,
      'lon': instance.lon,
      'country': instance.country,
      'state': instance.state,
    };

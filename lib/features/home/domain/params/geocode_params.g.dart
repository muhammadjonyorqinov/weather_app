// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocode_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeoCodeParams _$$_GeoCodeParamsFromJson(Map<String, dynamic> json) =>
    _$_GeoCodeParams(
      lat: (json['lat'] as num?)?.toDouble() ?? AppConstants.DEFAULT_LAT,
      lon: (json['lon'] as num?)?.toDouble() ?? AppConstants.DEFAULT_LON,
      appid: json['appid'] as String? ?? AppConstants.API_KEY,
      limit: json['limit'] as int? ?? 1,
    );

Map<String, dynamic> _$$_GeoCodeParamsToJson(_$_GeoCodeParams instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'appid': instance.appid,
      'limit': instance.limit,
    };

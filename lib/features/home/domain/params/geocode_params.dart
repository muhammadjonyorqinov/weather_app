import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utils/core/app_constants.dart';
part 'geocode_params.g.dart';

part 'geocode_params.freezed.dart';
@freezed
class GeoCodeParams with _$GeoCodeParams {
  const factory GeoCodeParams({
    @Default(AppConstants.DEFAULT_LAT) double? lat,
    @Default(AppConstants.DEFAULT_LON) double? lon,
    @Default(AppConstants.API_KEY) String appid,
    @Default(1) int limit,
  }) = _GeoCodeParams;

  factory GeoCodeParams.fromJson(Map<String, dynamic> json) =>
      _$GeoCodeParamsFromJson(json);
}

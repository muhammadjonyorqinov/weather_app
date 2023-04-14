import 'package:freezed_annotation/freezed_annotation.dart';

part 'geocode.g.dart';

part 'geocode.freezed.dart';

@freezed
class GeoCode with _$GeoCode {
  const factory GeoCode({
    String? name,
    double? lat,
    double? lon,
    String? country,
    String? state,
  }) = _GeoCode;

  factory GeoCode.fromJson(Map<String, dynamic> json) =>
      _$GeoCodeFromJson(json);
}

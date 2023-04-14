import 'package:freezed_annotation/freezed_annotation.dart';

class IntegerConverter implements JsonConverter<int?, dynamic> {
  const IntegerConverter();

  @override
  int? fromJson(dynamic data) {
    return data is double ? data.round() : data;
  }

  @override
  toJson(int? data) {
    return data?.toDouble();
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime?, int?> {
  const DateTimeConverter();

  @override
  DateTime? fromJson(int? millisecond) {
    return millisecond != null
        ? DateTime.fromMillisecondsSinceEpoch(millisecond * 1000).toLocal()
        : null;
  }

  @override
  toJson(DateTime? data) {
    return (data?.toUtc().millisecondsSinceEpoch ?? 0) ~/ 1000;
  }
}

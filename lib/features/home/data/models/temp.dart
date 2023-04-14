import 'package:freezed_annotation/freezed_annotation.dart';
import '/utils/converters/integer_converter.dart';

part 'temp.g.dart';

part 'temp.freezed.dart';

@freezed
class Temp with _$Temp {
  const factory Temp({
    @IntegerConverter() int? day,
    @IntegerConverter() int? night,
  }) = _Temp;

  factory Temp.fromJson(Map<String, dynamic> json) => _$TempFromJson(json);
}

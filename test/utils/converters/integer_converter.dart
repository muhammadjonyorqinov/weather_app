import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/utils/converters/integer_converter.dart';

main() {
  late IntegerConverter converter;

  setUp(() {
    converter = const IntegerConverter();
  });
  group('doubleToInt', () {
    test(
      'should return an integer when the double or integer given',
      () {
        const double = 2.3;
        final result = converter.fromJson(double);
        expect(result, 2);
        const int = 2;
        final resultInt = converter.fromJson(int);
        expect(resultInt, 2);
      },
    );
  });
}

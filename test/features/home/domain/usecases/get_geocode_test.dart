import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app/features/home/data/models/geocode.dart';
import 'package:weather_app/features/home/domain/params/geocode_params.dart';
import 'package:weather_app/features/home/domain/repository/weather_repo.dart';
import '../../../../fixtures/fixture_reader.dart';
import 'get_weather_test.mocks.dart';

@GenerateMocks([WeatherRepo])
void main() {
  late MockWeatherRepo mockRepo;

  setUp(() {
    mockRepo = MockWeatherRepo();
  });

  const GeoCodeParams params = GeoCodeParams();
  final GeoCode geocode =
      GeoCode.fromJson(json.decode(fixture('geocode.json')));

  test('should get geocode from the repository', () async {
    //arrange
    when(mockRepo.getGeoCode(any)).thenAnswer((_) async => Right(geocode));

    //act
    final result = await mockRepo.getGeoCode(params);

    //asset
    expect(result, Right(geocode));
    verify(mockRepo.getGeoCode(params));
    verifyNoMoreInteractions(mockRepo);
  });
}

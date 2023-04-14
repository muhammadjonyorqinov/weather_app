import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app/features/home/data/models/weather_response.dart';
import 'package:weather_app/features/home/domain/params/weather_params.dart';
import 'package:weather_app/features/home/domain/repository/weather_repo.dart';
import '../../../../fixtures/fixture_reader.dart';
import 'get_weather_test.mocks.dart';

@GenerateMocks([WeatherRepo])
void main() {
  late MockWeatherRepo mockRepo;

  setUp(() {
    mockRepo = MockWeatherRepo();
  });

  const WeatherParams params = WeatherParams();
  final WeatherResponse weather =
      WeatherResponse.fromJson(json.decode(fixture('weather.json')));

  test('should get weather from the repository', () async {
    //arrange
    when(mockRepo.getWeather(any)).thenAnswer((_) async => Right(weather));

    //act
    final result = await mockRepo.getWeather(params);

    //asset
    expect(result, Right(weather));
    verify(mockRepo.getWeather(params));
    verifyNoMoreInteractions(mockRepo);
  });
}

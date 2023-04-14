import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/features/home/data/data_source/weather_local_data_source.dart';
import 'package:weather_app/features/home/data/models/weather_response.dart';
import 'package:weather_app/utils/core/app_constants.dart';
import 'package:weather_app/utils/core/failures.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'weather_local_data_source_test.mocks.dart';

@GenerateMocks([SharedPreferences])
void main() {
  late WeatherLocalDataSourceImpl mockLocalSource;
  late MockSharedPreferences mockSharedPreferences;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    mockLocalSource = WeatherLocalDataSourceImpl(mockSharedPreferences);
  });

  group('getLastWeather', () {
    final cachedWeather =
        WeatherResponse.fromJson(json.decode(fixture('weather_cached.json')));

    test(
        'should return WeatherResponse from SharedPreferences when there is one in the cache',
        () async {
      when(mockSharedPreferences.getString(any))
          .thenReturn(fixture('weather_cached.json'));
      final result = await mockLocalSource.getLastWeather();

      verify(mockSharedPreferences.getString(AppConstants.CACHED_WEATHER));
      expect(result, equals(cachedWeather));
    });

    test('should throw exception', () async {
      when(mockSharedPreferences.getString(any)).thenReturn(null);
      final call = mockLocalSource.getLastWeather;
      expect(() => call(), throwsA(const TypeMatcher<CacheFailure>()));
    });
  });

  group('cacheWeather', () {
    final weather =
        WeatherResponse.fromJson(json.decode(fixture('weather.json')));

    test('should call SharedPreferences to cache the data', () async {
      when(mockSharedPreferences.setString(any, any))
          .thenAnswer((_) async => true);
      mockLocalSource.cacheWeather(weather);
      final expectedJsonString = json.encode(weather.toJson());

      verify(
        mockSharedPreferences.setString(
          AppConstants.CACHED_WEATHER,
          expectedJsonString,
        ),
      );
    });
  });
}

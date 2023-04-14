import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app/features/home/data/data_source/weather_remote_data_source.dart';
import 'package:weather_app/features/home/domain/params/weather_params.dart';
import 'package:weather_app/utils/core/app_constants.dart';
import 'package:weather_app/utils/core/failures.dart';
import '../../../../fixtures/fixture_reader.dart';
import 'weather_remote_data_source_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  late WeatherRemoteDataSourceImpl source;
  late MockDio mockDio;

  setUp(() {
    mockDio = MockDio();
    source = WeatherRemoteDataSourceImpl(dio: mockDio);
  });

  void setUpMockHttpClientSuccess200() {
    when(
      mockDio.get(any, queryParameters: anyNamed('queryParameters')),
    ).thenAnswer((realInvocation) async => Response(
        requestOptions: RequestOptions(),
        data: json.decode(fixture('weather.json')),
        statusCode: 200));
  }

  void setUpMockHttpClientFailure404() {
    when(
      mockDio.get(any, queryParameters: anyNamed('queryParameters')),
    ).thenAnswer((realInvocation) async => Response(
        requestOptions: RequestOptions(),
        data: 'Something went wrong',
        statusCode: 404));
  }

  group('getWeather', () {
    test(
      '''should perform a GET request on a URL''',
      () async {
        setUpMockHttpClientSuccess200();
        source.getWeather(const WeatherParams());
        verify(mockDio.get(AppConstants.WEATHER,
            queryParameters: const WeatherParams().toJson()));
      },
    );

    test('should throw exception', () async {
      setUpMockHttpClientFailure404();
      final call = source.getWeather;
      expect(() => call(const WeatherParams()),
          throwsA(const TypeMatcher<ServerFailure>()));
    });
  });
}

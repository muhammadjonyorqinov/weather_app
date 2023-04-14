import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app/features/home/data/models/weather_response.dart';
import 'package:weather_app/features/home/domain/params/weather_params.dart';
import 'package:weather_app/features/home/domain/usecases/get_geocode.dart';
import 'package:weather_app/features/home/domain/usecases/get_weather.dart';
import 'package:weather_app/features/home/presentation/bloc/weather_bloc.dart';
import 'package:weather_app/utils/core/enums.dart';
import 'package:weather_app/utils/core/failures.dart';
import '../../../../fixtures/fixture_reader.dart';
import 'weather_bloc.mocks.dart';
import 'package:bloc_test/bloc_test.dart';

@GenerateMocks([GetWeather, GetGeoCode, WeatherBloc])
void main() {
  late MockGetWeather getWeather;
  late MockGetGeoCode getGeoCode;
  late WeatherBloc weatherBloc;

  setUp(() {
    getGeoCode = MockGetGeoCode();
    getWeather = MockGetWeather();
    weatherBloc = WeatherBloc(getWeather: getWeather, getGeoCode: getGeoCode);
  });

  test('initial state', () {
    expect(weatherBloc.state.status, equals(Statuses.initial));
  });

  group('WeatherBloc', () {
    final weather =
        WeatherResponse.fromJson(json.decode(fixture('weather.json')));
    const serverError = ServerFailure(
      errorMessage: '',
      statusCode: 404,
    );
    test(
      'should get data from the concrete use case',
      () async {
        // arrange
        when(getWeather(any)).thenAnswer((_) async => Right(weather));
        // act
        weatherBloc.add(const WeatherEvent.getWeather());
        await untilCalled(getWeather.call(any));
        // assert
        verify(getWeather.call(const WeatherParams()));
      },
    );
    blocTest<WeatherBloc, WeatherState>(
      'should emit [Loading, Success] when data is gotten successfully',
      build: () => weatherBloc,
      act: (bloc) {
        when(getWeather.call(any)).thenAnswer((_) async => Right(weather));
        bloc.add(const WeatherEvent.getWeather());
      },
      expect: () => <WeatherState>[
        const WeatherState(status: Statuses.loading),
        WeatherState(status: Statuses.success, data: weather),
      ],
    );

    blocTest<WeatherBloc, WeatherState>(
      'should emit [Loading, Error] when data fails',
      build: () => weatherBloc,
      act: (bloc) {
        when(getWeather.call(any))
            .thenAnswer((_) async => const Left(serverError));
        bloc.add(const WeatherEvent.getWeather());
      },
      expect: () => <WeatherState>[
        const WeatherState(status: Statuses.loading),
        const WeatherState(status: Statuses.error, error: serverError),
      ],
    );
  });
}

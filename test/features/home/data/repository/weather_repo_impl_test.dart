import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app/features/home/data/data_source/weather_local_data_source.dart';
import 'package:weather_app/features/home/data/data_source/weather_remote_data_source.dart';
import 'package:weather_app/features/home/data/models/weather_response.dart';
import 'package:weather_app/features/home/data/repository/weather_repo_impl.dart';
import 'package:weather_app/features/home/domain/params/weather_params.dart';
import 'package:weather_app/utils/core/failures.dart';
import 'package:weather_app/utils/network/network_info.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'weather_repo_impl_test.mocks.dart';

@GenerateMocks([NetworkInfo, WeatherRemoteDataSource, WeatherLocalDataSource])
void main() {
  late WeatherRepoImpl repository;
  late MockNetworkInfo networkInfo;
  late MockWeatherLocalDataSource localDataSource;
  late MockWeatherRemoteDataSource remoteDataSource;

  setUp(() {
    networkInfo = MockNetworkInfo();
    localDataSource = MockWeatherLocalDataSource();
    remoteDataSource = MockWeatherRemoteDataSource();
    repository = WeatherRepoImpl(
      remoteSource: remoteDataSource,
      networkInfo: networkInfo,
      localSource: localDataSource,
    );
  });

  void runTestsOnline(Function body) {
    group('device is online', () {
      setUp(() {
        when(networkInfo.isConnected)
            .thenAnswer((realInvocation) async => true);
      });

      body();
    });
  }

  void runTestsOffline(Function body) {
    group('device is offline', () {
      setUp(() {
        when(networkInfo.isConnected)
            .thenAnswer((realInvocation) async => false);
      });

      body();
    });
  }

  group('getWeather', () {
    final weather =
        WeatherResponse.fromJson(json.decode(fixture('weather.json')));

    runTestsOnline(() {
      test(
          'should return remote data when the call to remote data source is successful',
          () async {
        when(remoteDataSource.getWeather(any))
            .thenAnswer((realInvocation) async => weather);
        final result =
            await repository.remoteSource.getWeather(const WeatherParams());

        verify(remoteDataSource.getWeather(const WeatherParams()));
        expect(result, equals(weather));
      });

      test(
        'should cache the data locally when the call to remote data source is successful',
        () async {
          // arrange
          when(remoteDataSource.getWeather(any))
              .thenAnswer((_) async => weather);
          // act
          await repository.getWeather(const WeatherParams());
          // assert
          verify(remoteDataSource.getWeather(const WeatherParams()));
          verify(localDataSource.cacheWeather(weather));
        },
      );

      test(
        'should return server failure when the call to remote data source is unsuccessful',
        () async {
          // arrange
          when(remoteDataSource.getWeather(any))
              .thenThrow(const ServerFailure(errorMessage: ''));
          // act
          final result = await repository.getWeather(const WeatherParams());
          // assert
          verify(remoteDataSource.getWeather(const WeatherParams()));
          verifyZeroInteractions(localDataSource);
          expect(result, equals(const Left(ServerFailure(errorMessage: ''))));
        },
      );
    });
    runTestsOffline(() {
      test(
        'should return last locally cached data when the cached data is present',
        () async {
          // arrange
          when(localDataSource.getLastWeather())
              .thenAnswer((_) async => weather);
          // act
          final result = await repository.getWeather(const WeatherParams());
          // assert
          verifyZeroInteractions(remoteDataSource);
          verify(localDataSource.getLastWeather());
          expect(result, equals(Right(weather)));
        },
      );

      test(
        'should return CacheFailure when there is no cached data present',
        () async {
          // arrange
          when(localDataSource.getLastWeather()).thenThrow(
            const CacheFailure(
              message: 'no_cached_data',
              statusCode: 100,
            ),
          );
          // act
          final result = await repository.getWeather(const WeatherParams());
          // assert
          verifyZeroInteractions(remoteDataSource);
          verify(localDataSource.getLastWeather());
          expect(
            result,
            equals(
              const Left(
                CacheFailure(
                  message: 'no_cached_data',
                  statusCode: 100,
                ),
              ),
            ),
          );
        },
      );
    });
  });
}

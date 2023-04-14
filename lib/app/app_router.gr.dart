// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:weather_app/features/detailed_weather/presentation/pages/detailed_weather_ui.dart'
    as _i3;
import 'package:weather_app/features/home/data/models/daily_weather.dart'
    as _i6;
import 'package:weather_app/features/home/data/models/hourly_weather.dart'
    as _i7;
import 'package:weather_app/features/home/presentation/pages/home_ui.dart'
    as _i1;
import 'package:weather_app/features/splash/presentation/pages/splash_ui.dart'
    as _i2;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeUI.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.WrappedRoute(child: const _i1.HomeUI()),
      );
    },
    SplashUI.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SplashUI(),
      );
    },
    DetailedWeatherUI.name: (routeData) {
      final args = routeData.argsAs<DetailedWeatherUIArgs>(
          orElse: () => const DetailedWeatherUIArgs());
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.DetailedWeatherUI(
          key: args.key,
          dWeather: args.dWeather,
          hWeather: args.hWeather,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeUI]
class HomeUI extends _i4.PageRouteInfo<void> {
  const HomeUI({List<_i4.PageRouteInfo>? children})
      : super(
          HomeUI.name,
          initialChildren: children,
        );

  static const String name = 'HomeUI';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SplashUI]
class SplashUI extends _i4.PageRouteInfo<void> {
  const SplashUI({List<_i4.PageRouteInfo>? children})
      : super(
          SplashUI.name,
          initialChildren: children,
        );

  static const String name = 'SplashUI';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DetailedWeatherUI]
class DetailedWeatherUI extends _i4.PageRouteInfo<DetailedWeatherUIArgs> {
  DetailedWeatherUI({
    _i5.Key? key,
    _i6.DailyWeather? dWeather,
    _i7.HourlyWeather? hWeather,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          DetailedWeatherUI.name,
          args: DetailedWeatherUIArgs(
            key: key,
            dWeather: dWeather,
            hWeather: hWeather,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailedWeatherUI';

  static const _i4.PageInfo<DetailedWeatherUIArgs> page =
      _i4.PageInfo<DetailedWeatherUIArgs>(name);
}

class DetailedWeatherUIArgs {
  const DetailedWeatherUIArgs({
    this.key,
    this.dWeather,
    this.hWeather,
  });

  final _i5.Key? key;

  final _i6.DailyWeather? dWeather;

  final _i7.HourlyWeather? hWeather;

  @override
  String toString() {
    return 'DetailedWeatherUIArgs{key: $key, dWeather: $dWeather, hWeather: $hWeather}';
  }
}

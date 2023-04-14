// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:weather_app/features/home/presentation/pages/home_ui.dart'
    as _i1;
import 'package:weather_app/features/splash/presentation/pages/splash_ui.dart'
    as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeUI.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.WrappedRoute(child: const _i1.HomeUI()),
      );
    },
    SplashUI.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SplashUI(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeUI]
class HomeUI extends _i3.PageRouteInfo<void> {
  const HomeUI({List<_i3.PageRouteInfo>? children})
      : super(
          HomeUI.name,
          initialChildren: children,
        );

  static const String name = 'HomeUI';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SplashUI]
class SplashUI extends _i3.PageRouteInfo<void> {
  const SplashUI({List<_i3.PageRouteInfo>? children})
      : super(
          SplashUI.name,
          initialChildren: children,
        );

  static const String name = 'SplashUI';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

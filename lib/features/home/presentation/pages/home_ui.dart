import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/utils/core/styles.dart';
import '/utils/widgets/w_error.dart';
import '../widget/w_current_location.dart';
import '../widget/w_language_selector.dart';
import '../widget/w_type_selector.dart';
import '../widget/w_weathers.dart';
import '/utils/core/enums.dart';
import '/utils/widgets/w_loader.dart';
import '../bloc/weather_bloc.dart';
import '/utils/widgets/base_scaffold.dart';
import '/app/injections.dart';

@RoutePage()
class HomeUI extends StatelessWidget implements AutoRouteWrapper {
  const HomeUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: AppBar(
        elevation: 0,
        title: BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) => state.status == Statuses.success
              ? Text(
                  '${state.geoCode.name ?? ' '} ${state.geoCode.country ?? ' '}',
                  style: kWhiteStyle20w600,
                )
              : const SizedBox(),
        ),
        backgroundColor: Colors.transparent,
        actions: const [
          WCurrentLocation(),
          WLanguageSelector(),
          WTypeSelector(),
        ],
      ),
      body: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          if (state.status == Statuses.success) {
            return const WWeathers();
          }
          if (state.status == Statuses.error) {
            return WError(
              message: state.error?.message,
              onPressed: () => context
                  .read<WeatherBloc>()
                  .add(const WeatherEvent.getWeather()),
            );
          }
          return const WLoader();
        },
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => ls<WeatherBloc>()
        ..add(const WeatherEvent.setCurrentLocation()),
      child: this,
    );
  }
}

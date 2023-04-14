import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'w_dailies.dart';
import 'w_hourlies.dart';
import '/utils/core/enums.dart';
import '../bloc/weather_bloc.dart';

class WWeathers extends StatelessWidget {
  const WWeathers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        switch (state.type) {
          case WeatherType.daily:
            return const WDailies();
          default:
            return const WHourlies();
        }
      },
    );
  }
}

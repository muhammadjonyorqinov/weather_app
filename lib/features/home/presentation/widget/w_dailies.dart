import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'w_daily.dart';
import '../bloc/weather_bloc.dart';

class WDailies extends StatelessWidget {
  const WDailies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        final dailies = state.data?.daily;
        return ListView.builder(
          itemCount: dailies?.length,
          itemBuilder: (context, index) =>WDaily(weather:dailies?[index]),
        );
      },
    );
  }
}

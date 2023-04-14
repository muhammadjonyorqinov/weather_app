import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'w_hourly.dart';
import '../bloc/weather_bloc.dart';

class WHourlies extends StatelessWidget {
  const WHourlies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        final hourlies = state.data?.hourly;
        return ListView.builder(
          itemCount: hourlies?.length,
          itemBuilder: (context, index) => WHourly(weather: hourlies?[index]),
        );
      },
    );
  }
}

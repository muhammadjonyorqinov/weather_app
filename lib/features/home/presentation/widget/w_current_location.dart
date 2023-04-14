import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/features/home/presentation/bloc/weather_bloc.dart';
import '/gen/colors.gen.dart';
import '/gen/assets.gen.dart';

class WCurrentLocation extends StatelessWidget {
  const WCurrentLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.read<WeatherBloc>().add(
            const WeatherEvent.setCurrentLocation(),
          ),
      icon: Assets.images.currentLocation.svg(color: ColorName.white),
    );
  }
}

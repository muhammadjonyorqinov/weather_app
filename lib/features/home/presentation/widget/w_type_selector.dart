import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/utils/core/enums.dart';
import '../bloc/weather_bloc.dart';

class WTypeSelector extends StatelessWidget {
  const WTypeSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        return PopupMenuButton(
          initialValue: state.type,
          itemBuilder: (context) => WeatherType.values
              .map(
                (type) => PopupMenuItem(
                  value: type,
                  child: Text(
                    type.name,
                  ),
                ),
              )
              .toList(),
          onSelected: (v) => context.read<WeatherBloc>().add(
                WeatherEvent.setType(v),
              ),
        );
      },
    );
  }
}

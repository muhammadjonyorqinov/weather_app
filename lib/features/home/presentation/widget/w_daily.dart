import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '/app/app_router.dart';
import '/app/app_router.gr.dart';
import '/app/injections.dart';
import 'w_background.dart';
import '/utils/core/styles.dart';
import '/utils/core/dimensions.dart';
import '/gen/assets.gen.dart';
import '/features/home/data/models/daily_weather.dart';

class WDaily extends StatelessWidget {
  final DailyWeather? weather;

  const WDaily({
    Key? key,
    required this.weather,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WBackground(
      onPressed: () => ls<AppRouter>().push(DetailedWeatherUI(dWeather: weather)),
      child: Row(
        children: [
          Text(
            DateFormat("dd MMM yyyy", context.locale.languageCode)
                .format(weather!.dateTime!),
            style: kBlackStyle14w600,
          ),
          const Spacer(),
          Assets.images.day.svg(),
          Padding(
            padding: Dimensions.paddingLeft4,
            child: Text(
              '${weather?.temp?.day?.toString() ?? ' '} °C',
              style: kBlackStyle14w600,
            ),
          ),
          Padding(
            padding: Dimensions.paddingLeft24,
            child: Assets.images.night.svg(height: 18),
          ),
          Padding(
            padding: Dimensions.paddingLeft4,
            child: Text(
              '${weather?.temp?.night?.toString() ?? ' '} °C',
              style: kBlackStyle14w600,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/features/home/data/models/daily_weather.dart';
import 'package:weather_app/features/home/data/models/hourly_weather.dart';
import 'package:weather_app/gen/localization_keys.dart';
import 'package:weather_app/utils/core/dimensions.dart';
import 'package:weather_app/utils/core/styles.dart';
import 'package:weather_app/utils/widgets/base_scaffold.dart';

import '../../../../gen/assets.gen.dart';
import '../widget/w_card.dart';

@RoutePage()
class DetailedWeatherUI extends StatelessWidget {
  final DailyWeather? dWeather;
  final HourlyWeather? hWeather;

  const DetailedWeatherUI({Key? key, this.dWeather, this.hWeather})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: AppBar(
        title: Text(
          LocalizationKeys.details.tr(),
          style: kWhiteStyle20w600,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const BackButton(),
      ),
      body: Padding(
        padding: Dimensions.paddingAll16,
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
          ),
          children: [
            WCard(
              icon: Assets.images.temperature,
              title:
                  '${dWeather?.temp?.day?.toString() ?? hWeather?.temp?.toString() ?? ' '} °C',
            ),
            WCard(
              icon: Assets.images.humidity,
              title:
                  "${dWeather?.humidity?.toString() ?? hWeather?.humidity?.toString() ?? ' '} %",
            ),
            WCard(
              icon: Assets.images.pressure,
              title:
                  "${dWeather?.pressure?.toString() ?? hWeather?.pressure?.toString() ?? ' '} hPa",
            ),
            WCard(
              icon: Assets.images.wind,
              title:
                  "${dWeather?.windSpeed?.toString() ?? hWeather?.windSpeed?.toString() ?? ' '} ${LocalizationKeys.mSec.tr()}",
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '/app/app_router.dart';
import '/app/app_router.gr.dart';
import '/app/injections.dart';
import '/utils/core/styles.dart';
import '/features/home/data/models/hourly_weather.dart';
import '/features/home/presentation/widget/w_background.dart';

class WHourly extends StatelessWidget {
  final HourlyWeather? weather;

  const WHourly({Key? key, this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WBackground(
      onPressed: () => ls<AppRouter>().push(DetailedWeatherUI(hWeather: weather)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                DateFormat("HH:mm").format(weather!.dateTime!),
                style: kBlackStyle14w600,
              ),
              Text(
                DateFormat("dd MMM yyyy", context.locale.languageCode)
                    .format(weather!.dateTime!),
                style: kGreyStyle12w400,
              ),
            ],
          ),
          Text(
            '${weather?.temp?.toString() ?? ' '} °C',
            style: kBlackStyle14w600,
          )
        ],
      ),
    );
  }
}

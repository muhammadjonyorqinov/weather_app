import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/app/weather_app.dart';
import 'app/injections.dart';
import 'utils/core/app_constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(
    EasyLocalization(
        supportedLocales: AppConstants.languages,
        path: 'assets/translations',
        fallbackLocale: AppConstants.languages[0],
        useOnlyLangCode: true,
        child: const WeatherApp()),
  );
}

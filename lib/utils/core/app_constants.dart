import 'package:flutter/material.dart';

import '../../features/home/data/models/geocode.dart';

class AppConstants {
  static final languages = [
    const Locale('en', 'EN'),
    const Locale('ru', 'РУ'),
  ];
  static const BASE_URL = 'https://api.openweathermap.org';
  static const GEOCODE = '/geo/1.0/reverse';
  static const WEATHER = '/data/3.0/onecall';
  static const CACHED_WEATHER = 'weather';
  static const CACHED_GEOCODE = 'geocode';
  static const API_KEY = 'da39af308c2b9dc7fef181ff65823767';
  static const UNITS = 'metric';
  static const DEFAULT_LAT = 50.4501;
  static const DEFAULT_LON = 30.5234;
  static const DEFAULT_GEOCODE = GeoCode(
      name: 'Kyiv',
      lat: AppConstants.DEFAULT_LAT,
      lon: AppConstants.DEFAULT_LON,
      country: 'Ukraine');
}

import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

///Note: some icons are not true
Widget buildWeatherIcon(String weatherCondition) {
  final IconData weatherIcon;
  switch (weatherCondition) {
    case 'Snow':
      weatherIcon = WeatherIcons.snow;
      break;
    case 'Sleet':
      weatherIcon = WeatherIcons.sleet;
      break;
    case 'Hail':
      weatherIcon = WeatherIcons.hail;
      break;
    case 'Thunderstorm':
      weatherIcon = WeatherIcons.thunderstorm;
      break;
    case 'Heavy Rain':
      weatherIcon = WeatherIcons.rain;
      break;
    case 'Light Rain':
      weatherIcon = WeatherIcons.rain_mix;
      break;
    case 'Showers':
      weatherIcon = WeatherIcons.showers;
      break;
    case 'Heavy Cloud':
      weatherIcon = WeatherIcons.cloud_up;
      break;
    case 'Light Cloud':
      weatherIcon = WeatherIcons.cloud;
      break;
    case 'Clear':
      weatherIcon = WeatherIcons.cloud_refresh;
      break;
    default:
      weatherIcon = WeatherIcons.alien;
      break;
  }
  return Icon(
    weatherIcon,
    size: 60,
    color: Colors.white,
  );
}
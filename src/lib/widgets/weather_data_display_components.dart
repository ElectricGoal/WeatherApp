import 'package:flutter/material.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/size_config.dart';
import 'package:weather_icons/weather_icons.dart';

class WeatherDetailsDisplay extends StatelessWidget {
  const WeatherDetailsDisplay({
    Key? key,
    required this.airPress,
    required this.windSpeed,
    required this.humidity,
    required this.visibility,
  }) : super(key: key);

  final double airPress;
  final double windSpeed;
  final double humidity;
  final double visibility;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            WeatherDetail(
              label: 'Air pressure',
              parameter: airPress,
              unit: 'mb',
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 25),
              width: SizeConfig.widthMultiplier * 30,
              height: 1, // Thickness
              color: Colors.white,
            ),
            WeatherDetail(
              label: 'Wind speed',
              parameter: windSpeed,
              unit: 'mph',
            )
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: SizeConfig.widthMultiplier * 50,
          width: 1, // Thickness
          color: Colors.white,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            WeatherDetail(
              label: 'Humidity',
              parameter: humidity,
              unit: '%',
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 25),
              width: SizeConfig.widthMultiplier * 30,
              height: 1, // Thickness
              color: Colors.white,
            ),
            WeatherDetail(
              label: 'Visibility',
              parameter: visibility,
              unit: 'miles',
            )
          ],
        ),
      ],
    );
  }
}

class WeatherDetail extends StatelessWidget {
  const WeatherDetail({
    Key? key,
    required this.label,
    required this.parameter,
    required this.unit,
  }) : super(key: key);

  final String label;
  final double parameter;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          parameter.toStringAsFixed(1) + ' ' + unit,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}

///Note: some icons are not true
Widget buildWeatherIcon(var weatherCondition) {
  final IconData weatherIcon;
  switch (weatherCondition) {
    case WeatherCondition.snow:
      weatherIcon = WeatherIcons.snow;
      break;
    case WeatherCondition.sleet:
      weatherIcon = WeatherIcons.sleet;
      break;
    case WeatherCondition.hail:
      weatherIcon = WeatherIcons.hail;
      break;
    case WeatherCondition.thunderstorm:
      weatherIcon = WeatherIcons.thunderstorm;
      break;
    case WeatherCondition.heavyRain:
      weatherIcon = WeatherIcons.rain;
      break;
    case WeatherCondition.lightRain:
      weatherIcon = WeatherIcons.rain_mix;
      break;
    case WeatherCondition.showers:
      weatherIcon = WeatherIcons.showers;
      break;
    case WeatherCondition.heavyCloud:
      weatherIcon = WeatherIcons.cloud_up;
      break;
    case WeatherCondition.lightCloud:
      weatherIcon = WeatherIcons.cloud;
      break;
    case WeatherCondition.clear:
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
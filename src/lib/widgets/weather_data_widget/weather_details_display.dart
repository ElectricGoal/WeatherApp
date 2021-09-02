import 'package:flutter/material.dart';
import 'package:weather_app/responsive/size_config.dart';
import 'package:weather_app/widgets/weather_data_widget/weather_details.dart';

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


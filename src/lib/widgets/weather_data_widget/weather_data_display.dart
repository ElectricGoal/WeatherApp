import 'package:flutter/material.dart';
import 'package:weather_app/models/weather/weather.dart';
import 'package:weather_app/responsive/size_config.dart';
import 'package:weather_app/widgets/weather_data_widget/build_weather_icons.dart';
import 'package:weather_app/widgets/weather_data_widget/weather_details_display.dart';

///Display weatherData on screen
class WeatherDataDisplay extends StatelessWidget {
  const WeatherDataDisplay({
    Key? key,
    required this.weatherData,
  }) : super(key: key);

  final Weather weatherData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            weatherData.date,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 3,
          ),
          buildWeatherIcon(weatherData.formattedCondition),
          SizedBox(
            height: SizeConfig.heightMultiplier * 5,
          ),
          Text(
            weatherData.temp.toStringAsFixed(1) + "\u00B0",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: SizeConfig.textMultiplier * 8,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'max: ' + weatherData.maxTemp.toStringAsFixed(1) + '\u00B0 C',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Text(
                'min: ' + weatherData.minTemp.toStringAsFixed(1) + '\u00B0 C',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 2,
          ),
          Text(
            weatherData.formattedCondition,
            style: TextStyle(
              letterSpacing: 1.1,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 3,
          ),
          WeatherDetailsDisplay(
            airPress: weatherData.airPress,
            windSpeed: weatherData.windSpeed,
            humidity: weatherData.humidity,
            visibility: weatherData.visibility,
          ),
          Spacer(),
          Text(
            'Confidence: ' + weatherData.confidence.toStringAsFixed(0) + '%',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:weather_app/widgets/menu_drawer.dart';
import 'package:weather_app/widgets/weather_data_display.dart';

///Get weather data and display it on screen.
class WeatherLocationScreen extends StatefulWidget {
  const WeatherLocationScreen({
    Key? key,
    required this.locationId,
    required this.name,
  }) : super(key: key);
  final int locationId;
  final String name;

  @override
  _WeatherLocationScreenState createState() => _WeatherLocationScreenState();
}

class _WeatherLocationScreenState extends State<WeatherLocationScreen> {
  final backgroundGradient = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.lightBlue,
        Colors.green,
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.name,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.lightBlue,
        elevation: 0.0,
      ),
      drawer: MenuDrawer(),
      body: Container(
        decoration: backgroundGradient,
        child: FutureBuilder<List<Weather>>(
          future: WeatherService().fetchWeather(widget.locationId),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            final weatherData = snapshot.data;
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                );
              default:
                if (snapshot.hasError) {
                  return Center(
                    child: Text('Some error occurred!'),
                  );
                } else {
                  return buildWeatherData(weatherData);
                }
            }
          },
        ),
      ),
    );
  }
}

Widget buildWeatherData(List weatherData) {
  return PageView.builder(
    itemCount: weatherData.length,
    itemBuilder: (context, index) {
      return WeatherDataDisplay(
        weatherData: weatherData[index],
      );
    },
  );
}

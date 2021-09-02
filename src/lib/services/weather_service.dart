import 'package:dio/dio.dart';
import 'package:weather_app/models/weather/weather.dart';
import 'package:weather_app/services/api/api_service.dart';
import 'package:weather_app/services/location_service.dart';
import 'dart:async';

class WeatherService {
  final client = ApiClient(Dio(BaseOptions(contentType: "application/json")));

  ///Get your current location data.
  ///
  ///Return a list has 2 element [(cities.first)['woeid'], (cities.first)['title']].
  ///
  ///Example api link: https://www.metaweather.com/api/location/search/?lattlong=36.96,-122.02.
  Future<List> getCurrentLocationId() async {
    LocationService location = LocationService();

    ///[getCurrentLocation()] is used to get latitude and longtitude of your current location.
    await location.getCurrentLocation();

    var cities;

    await client
        .getWeatherWithLattLong(
      location.latitude,
      location.longtitude,
    )
        .then(
      (data) {
        cities = data;
      },
    ).catchError(
      (error) {
        print(error);
      },
    );

    if (cities == null || !(cities is List)) {
      return [];
    }

    ///get the location data at first element of the list
    return [
      ///Where On Earth ID, in this project I call it [locationId]
      (cities.first)['woeid'],

      ///Name of the location, example: Ho Chi Minh City
      (cities.first)['title'],
    ];
  }

  ///Get weather data with [locationId] (Where On Earth ID).
  ///
  ///Return a List<Weather>.
  ///
  ///Example api link: https://www.metaweather.com/api/location/2487956/.
  Future<List<Weather>> fetchWeather(int locationId) async {
    var weatherData;
    await client.getWeatherWithId(locationId).then(
      (data) {
        weatherData = data;
      },
    ).catchError(
      (error) {
        print(error);
      },
    );

    if (weatherData == null || !(weatherData['consolidated_weather'] is List)) {
      return [];
    }

    return (weatherData['consolidated_weather'] as List)
        .map(
          (data) => Weather.fromJson(data),
        )
        .toList();
  }
}

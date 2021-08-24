import 'package:weather_app/models/weather.dart';
import 'package:weather_app/services/current_location.dart';
import 'package:weather_app/services/networking.dart';
import 'dart:async';

import 'package:weather_app/services/url_api.dart' as API;

class WeatherService {
  ///Get your current location data.
  ///
  ///Return a list has 2 element [(cities.first)['woeid'], (cities.first)['title']].
  ///
  ///Example api link: https://www.metaweather.com/api/location/search/?lattlong=36.96,-122.02.
  Future<List> getCurrentLocationId() async {
    CurrentLocation location = CurrentLocation();

    ///[getCurrentLocation()] is used to get latitude and longtitude of your current location.
    await location.getCurrentLocation();

    NetworkChecker networkChecker = NetworkChecker(
      url: API.locationUrl(location.latitude, location.longtitude),
    );
    var cities = await networkChecker.getData() as List;

    ///return a empty list when [cities] is empty.
    if (cities.isEmpty) {
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
    NetworkChecker networkChecker = NetworkChecker(
      url: API.weatherUrl(locationId),
    );
    final weatherData = await networkChecker.getData();
    return (weatherData['consolidated_weather'] as List)
        .map(
          (data) => Weather.fromJson(data),
        )
        .toList();
  }
}

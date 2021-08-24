
enum WeatherCondition {
  snow,
  sleet,
  hail,
  thunderstorm,
  heavyRain,
  lightRain,
  showers,
  heavyCloud,
  lightCloud,
  clear,
  unknown
}

class Weather {
  final WeatherCondition weatherCondition;
  final String formattedCondition;
  final double minTemp;
  final double temp;
  final double maxTemp;
  final String date;
  final double windSpeed;
  final double airPress;
  final double humidity;
  final double visibility;
  final double confidence;

  //constructor
  Weather({
    required this.weatherCondition,
    required this.formattedCondition,
    required this.minTemp,
    required this.temp,
    required this.maxTemp,
    required this.date,
    required this.windSpeed,
    required this.airPress,
    required this.humidity,
    required this.visibility,
    required this.confidence,
  });

  static Weather fromJson(Map<String, dynamic> jsonObj) {
    return Weather(
      weatherCondition: _mapStringToWeatherCondition(jsonObj['weather_state_abbr']),
      formattedCondition: jsonObj['weather_state_name'] ?? '',
      minTemp: jsonObj['min_temp'] as double,
      maxTemp: jsonObj['max_temp'] as double,
      temp: jsonObj['the_temp'] as double,
      date: jsonObj['applicable_date'],
      windSpeed:  jsonObj['wind_speed'] as double,
      airPress: jsonObj['air_pressure'] as double,
      humidity: jsonObj['humidity'].toDouble(),
      visibility: jsonObj['visibility'] as double,
      confidence: jsonObj['predictability'].toDouble(),
    );
  }
  
  //Example:
  // "consolidated_weather": [
  // {
  //   "id": 5415841941159936,
  //   "weather_state_name": "Heavy Rain",
  //   "weather_state_abbr": "hr",
  //   "wind_direction_compass": "SW",
  //   "created": "2021-08-15T01:36:45.892738Z",
  //   "applicable_date": "2021-08-15",
  //   "min_temp": 24.77,
  //   "max_temp": 33.07,
  //   "the_temp": 31.32,
  //   "wind_speed": 4.630914435552374,
  //   "wind_direction": 232.39504060397343,
  //   "air_pressure": 1010,
  //   "humidity": 72,
  //   "visibility": 12.875121788753678,
  //   "predictability": 77
  // },

  static WeatherCondition _mapStringToWeatherCondition(String inputString) {
    Map<String, WeatherCondition> map = {
      'sn': WeatherCondition.snow,
      'sl': WeatherCondition.sleet,
      'h': WeatherCondition.hail,
      't': WeatherCondition.thunderstorm,
      'hr': WeatherCondition.heavyRain,
      'lr': WeatherCondition.lightRain,
      's': WeatherCondition.showers,
      'hc': WeatherCondition.heavyCloud,
      'lc': WeatherCondition.lightCloud,
      'c': WeatherCondition.clear
    };
    return map[inputString] ?? WeatherCondition.unknown;
  }
}



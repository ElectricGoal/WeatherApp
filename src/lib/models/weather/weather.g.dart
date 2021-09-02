// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_Weather _$$_WeatherFromJson(Map<String, dynamic> json) => _$_Weather(
      formattedCondition: json['weather_state_name'] as String,
      minTemp: (json['min_temp'] as num).toDouble(),
      maxTemp: (json['max_temp'] as num).toDouble(),
      temp: (json['the_temp'] as num).toDouble(),
      date: json['applicable_date'] as String,
      windSpeed: (json['wind_speed'] as num).toDouble(),
      airPress: (json['air_pressure'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      visibility: (json['visibility'] as num).toDouble(),
      confidence: (json['predictability'] as num).toDouble(),
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_WeatherToJson(_$_Weather instance) =>
    <String, dynamic>{
      'weather_state_name': instance.formattedCondition,
      'min_temp': instance.minTemp,
      'max_temp': instance.maxTemp,
      'the_temp': instance.temp,
      'applicable_date': instance.date,
      'wind_speed': instance.windSpeed,
      'air_pressure': instance.airPress,
      'humidity': instance.humidity,
      'visibility': instance.visibility,
      'predictability': instance.confidence,
    };

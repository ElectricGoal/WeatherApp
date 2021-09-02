import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  factory Weather({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'weather_state_name') required String formattedCondition,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'min_temp') required double minTemp,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'max_temp') required double maxTemp,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'the_temp') required double temp,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'applicable_date') required String date,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'wind_speed') required double windSpeed,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'air_pressure') required double airPress,
    required double humidity,
    required double visibility,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'predictability') required double confidence,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}



// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
class _$WeatherTearOff {
  const _$WeatherTearOff();

  _Weather call(
      {@JsonKey(name: 'weather_state_name') required String formattedCondition,
      @JsonKey(name: 'min_temp') required double minTemp,
      @JsonKey(name: 'max_temp') required double maxTemp,
      @JsonKey(name: 'the_temp') required double temp,
      @JsonKey(name: 'applicable_date') required String date,
      @JsonKey(name: 'wind_speed') required double windSpeed,
      @JsonKey(name: 'air_pressure') required double airPress,
      required double humidity,
      required double visibility,
      @JsonKey(name: 'predictability') required double confidence}) {
    return _Weather(
      formattedCondition: formattedCondition,
      minTemp: minTemp,
      maxTemp: maxTemp,
      temp: temp,
      date: date,
      windSpeed: windSpeed,
      airPress: airPress,
      humidity: humidity,
      visibility: visibility,
      confidence: confidence,
    );
  }

  Weather fromJson(Map<String, Object> json) {
    return Weather.fromJson(json);
  }
}

/// @nodoc
const $Weather = _$WeatherTearOff();

/// @nodoc
mixin _$Weather {
  @JsonKey(name: 'weather_state_name')
  String get formattedCondition =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'min_temp')
  double get minTemp =>
      throw _privateConstructorUsedError; 
  @JsonKey(name: 'max_temp')
  double get maxTemp =>
      throw _privateConstructorUsedError; 
  @JsonKey(name: 'the_temp')
  double get temp =>
      throw _privateConstructorUsedError; 
  @JsonKey(name: 'applicable_date')
  String get date =>
      throw _privateConstructorUsedError; 
  @JsonKey(name: 'wind_speed')
  double get windSpeed =>
      throw _privateConstructorUsedError; 
  @JsonKey(name: 'air_pressure')
  double get airPress => throw _privateConstructorUsedError;
  double get humidity => throw _privateConstructorUsedError;
  double get visibility =>
      throw _privateConstructorUsedError; 
  @JsonKey(name: 'predictability')
  double get confidence => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'weather_state_name') String formattedCondition,
      @JsonKey(name: 'min_temp') double minTemp,
      @JsonKey(name: 'max_temp') double maxTemp,
      @JsonKey(name: 'the_temp') double temp,
      @JsonKey(name: 'applicable_date') String date,
      @JsonKey(name: 'wind_speed') double windSpeed,
      @JsonKey(name: 'air_pressure') double airPress,
      double humidity,
      double visibility,
      @JsonKey(name: 'predictability') double confidence});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res> implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  final Weather _value;
  // ignore: unused_field
  final $Res Function(Weather) _then;

  @override
  $Res call({
    Object? formattedCondition = freezed,
    Object? minTemp = freezed,
    Object? maxTemp = freezed,
    Object? temp = freezed,
    Object? date = freezed,
    Object? windSpeed = freezed,
    Object? airPress = freezed,
    Object? humidity = freezed,
    Object? visibility = freezed,
    Object? confidence = freezed,
  }) {
    return _then(_value.copyWith(
      formattedCondition: formattedCondition == freezed
          ? _value.formattedCondition
          : formattedCondition // ignore: cast_nullable_to_non_nullable
              as String,
      minTemp: minTemp == freezed
          ? _value.minTemp
          : minTemp // ignore: cast_nullable_to_non_nullable
              as double,
      maxTemp: maxTemp == freezed
          ? _value.maxTemp
          : maxTemp // ignore: cast_nullable_to_non_nullable
              as double,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      airPress: airPress == freezed
          ? _value.airPress
          : airPress // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as double,
      confidence: confidence == freezed
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$WeatherCopyWith(_Weather value, $Res Function(_Weather) then) =
      __$WeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'weather_state_name') String formattedCondition,
      @JsonKey(name: 'min_temp') double minTemp,
      @JsonKey(name: 'max_temp') double maxTemp,
      @JsonKey(name: 'the_temp') double temp,
      @JsonKey(name: 'applicable_date') String date,
      @JsonKey(name: 'wind_speed') double windSpeed,
      @JsonKey(name: 'air_pressure') double airPress,
      double humidity,
      double visibility,
      @JsonKey(name: 'predictability') double confidence});
}

/// @nodoc
class __$WeatherCopyWithImpl<$Res> extends _$WeatherCopyWithImpl<$Res>
    implements _$WeatherCopyWith<$Res> {
  __$WeatherCopyWithImpl(_Weather _value, $Res Function(_Weather) _then)
      : super(_value, (v) => _then(v as _Weather));

  @override
  _Weather get _value => super._value as _Weather;

  @override
  $Res call({
    Object? formattedCondition = freezed,
    Object? minTemp = freezed,
    Object? maxTemp = freezed,
    Object? temp = freezed,
    Object? date = freezed,
    Object? windSpeed = freezed,
    Object? airPress = freezed,
    Object? humidity = freezed,
    Object? visibility = freezed,
    Object? confidence = freezed,
  }) {
    return _then(_Weather(
      formattedCondition: formattedCondition == freezed
          ? _value.formattedCondition
          : formattedCondition // ignore: cast_nullable_to_non_nullable
              as String,
      minTemp: minTemp == freezed
          ? _value.minTemp
          : minTemp // ignore: cast_nullable_to_non_nullable
              as double,
      maxTemp: maxTemp == freezed
          ? _value.maxTemp
          : maxTemp // ignore: cast_nullable_to_non_nullable
              as double,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      airPress: airPress == freezed
          ? _value.airPress
          : airPress // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as double,
      confidence: confidence == freezed
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Weather implements _Weather {
  _$_Weather(
      {@JsonKey(name: 'weather_state_name') required this.formattedCondition,
      @JsonKey(name: 'min_temp') required this.minTemp,
      @JsonKey(name: 'max_temp') required this.maxTemp,
      @JsonKey(name: 'the_temp') required this.temp,
      @JsonKey(name: 'applicable_date') required this.date,
      @JsonKey(name: 'wind_speed') required this.windSpeed,
      @JsonKey(name: 'air_pressure') required this.airPress,
      required this.humidity,
      required this.visibility,
      @JsonKey(name: 'predictability') required this.confidence});

  factory _$_Weather.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherFromJson(json);

  @override 
  @JsonKey(name: 'weather_state_name')
  final String formattedCondition;
  @override 
  @JsonKey(name: 'min_temp')
  final double minTemp;
  @override 
  @JsonKey(name: 'max_temp')
  final double maxTemp;
  @override 
  @JsonKey(name: 'the_temp')
  final double temp;
  @override 
  @JsonKey(name: 'applicable_date')
  final String date;
  @override
  @JsonKey(name: 'wind_speed')
  final double windSpeed;
  @override 
  @JsonKey(name: 'air_pressure')
  final double airPress;
  @override
  final double humidity;
  @override
  final double visibility;
  @override 
  @JsonKey(name: 'predictability')
  final double confidence;

  @override
  String toString() {
    return 'Weather(formattedCondition: $formattedCondition, minTemp: $minTemp, maxTemp: $maxTemp, temp: $temp, date: $date, windSpeed: $windSpeed, airPress: $airPress, humidity: $humidity, visibility: $visibility, confidence: $confidence)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Weather &&
            (identical(other.formattedCondition, formattedCondition) ||
                const DeepCollectionEquality()
                    .equals(other.formattedCondition, formattedCondition)) &&
            (identical(other.minTemp, minTemp) ||
                const DeepCollectionEquality()
                    .equals(other.minTemp, minTemp)) &&
            (identical(other.maxTemp, maxTemp) ||
                const DeepCollectionEquality()
                    .equals(other.maxTemp, maxTemp)) &&
            (identical(other.temp, temp) ||
                const DeepCollectionEquality().equals(other.temp, temp)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.windSpeed, windSpeed) ||
                const DeepCollectionEquality()
                    .equals(other.windSpeed, windSpeed)) &&
            (identical(other.airPress, airPress) ||
                const DeepCollectionEquality()
                    .equals(other.airPress, airPress)) &&
            (identical(other.humidity, humidity) ||
                const DeepCollectionEquality()
                    .equals(other.humidity, humidity)) &&
            (identical(other.visibility, visibility) ||
                const DeepCollectionEquality()
                    .equals(other.visibility, visibility)) &&
            (identical(other.confidence, confidence) ||
                const DeepCollectionEquality()
                    .equals(other.confidence, confidence)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(formattedCondition) ^
      const DeepCollectionEquality().hash(minTemp) ^
      const DeepCollectionEquality().hash(maxTemp) ^
      const DeepCollectionEquality().hash(temp) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(windSpeed) ^
      const DeepCollectionEquality().hash(airPress) ^
      const DeepCollectionEquality().hash(humidity) ^
      const DeepCollectionEquality().hash(visibility) ^
      const DeepCollectionEquality().hash(confidence);

  @JsonKey(ignore: true)
  @override
  _$WeatherCopyWith<_Weather> get copyWith =>
      __$WeatherCopyWithImpl<_Weather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherToJson(this);
  }
}

abstract class _Weather implements Weather {
  factory _Weather(
      {@JsonKey(name: 'weather_state_name')
          required String formattedCondition,
      @JsonKey(name: 'min_temp')
          required double minTemp,
      @JsonKey(name: 'max_temp')
          required double maxTemp,
      @JsonKey(name: 'the_temp')
          required double temp,
      @JsonKey(name: 'applicable_date')
          required String date,
      @JsonKey(name: 'wind_speed')
          required double windSpeed,
      @JsonKey(name: 'air_pressure')
          required double airPress,
      required double humidity,
      required double visibility,
      @JsonKey(name: 'predictability')
          required double confidence}) = _$_Weather;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$_Weather.fromJson;

  @override 
  @JsonKey(name: 'weather_state_name')
  String get formattedCondition => throw _privateConstructorUsedError;
  @override 
  @JsonKey(name: 'min_temp')
  double get minTemp => throw _privateConstructorUsedError;
  @override 
  @JsonKey(name: 'max_temp')
  double get maxTemp => throw _privateConstructorUsedError;
  @override 
  @JsonKey(name: 'the_temp')
  double get temp => throw _privateConstructorUsedError;
  @override 
  @JsonKey(name: 'applicable_date')
  String get date => throw _privateConstructorUsedError;
  @override 
  @JsonKey(name: 'wind_speed')
  double get windSpeed => throw _privateConstructorUsedError;
  @override 
  @JsonKey(name: 'air_pressure')
  double get airPress => throw _privateConstructorUsedError;
  @override
  double get humidity => throw _privateConstructorUsedError;
  @override
  double get visibility => throw _privateConstructorUsedError;
  @override 
  @JsonKey(name: 'predictability')
  double get confidence => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WeatherCopyWith<_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}

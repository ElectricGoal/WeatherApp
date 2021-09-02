// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_LocationSearch _$$_LocationSearchFromJson(Map<String, dynamic> json) =>
    _$_LocationSearch(
      name: json['title'] as String,
      type: json['location_type'] as String,
      id: json['woeid'] as int,
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_LocationSearchToJson(_$_LocationSearch instance) =>
    <String, dynamic>{
      'title': instance.name,
      'location_type': instance.type,
      'woeid': instance.id,
    };

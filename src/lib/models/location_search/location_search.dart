import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_search.freezed.dart';
part 'location_search.g.dart';

@freezed
class LocationSearch with _$LocationSearch {
  factory LocationSearch({
    // ignore: invalid_annotation_target
    @JsonKey(name: "title") required String name,
    // ignore: invalid_annotation_target
    @JsonKey(name: "location_type") required String type,
    // ignore: invalid_annotation_target
    @JsonKey(name: "woeid") required int id,
  }) = _LocationSearch;

  factory LocationSearch.fromJson(Map<String, dynamic> json) =>
      _$LocationSearchFromJson(json);
}
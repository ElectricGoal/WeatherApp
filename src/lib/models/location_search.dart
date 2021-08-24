import 'package:weather_app/services/search_service.dart';

///Use in [SearchService].
class LocationSearch {
  String? name;
  int? id;
  String? type;

  LocationSearch({
    required this.name,
    required this.id,
    required this.type,
  });

  static LocationSearch fromJson(Map<String, dynamic> jsonObj) {
    return LocationSearch(
      name: jsonObj['title'],
      id: jsonObj['woeid'],
      type: jsonObj['location_type'],
    );
  }
}

//Example:
// [
//   {
//     "title": "London",
//     "location_type": "City",
//     "woeid": 44418,
//     "latt_long": "51.506321,-0.12714"
//   }
// ]
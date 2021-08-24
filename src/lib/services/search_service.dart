import 'package:weather_app/models/location_search.dart';
import 'package:weather_app/services/networking.dart';
import 'package:weather_app/services/url_api.dart' as API;

class SearchService {
  ///Get locations with [query].
  ///
  ///Return a list locations which ['title'] contains [query].
  ///
  ///Example api link: ///Example: https://www.metaweather.com/api/location/search/?query=san.
  Future<List<LocationSearch>> searchLocation(String query) async {
    NetworkChecker networkChecker = NetworkChecker(
      url: API.queryUrl(query),
    );

    var searchResult = await networkChecker.getData();

    if (searchResult == null) {
      return [];
    }

    return (searchResult as List)
        .map(
          (data) => LocationSearch.fromJson(data),
        )
        .toList();
  }
}

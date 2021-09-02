import 'package:dio/dio.dart';
import 'package:weather_app/models/location_search/location_search.dart';
import 'package:weather_app/services/api/api_service.dart';

class SearchService {
  ///Get locations with [query].
  ///
  ///Return a list locations which ['title'] contains [query].
  ///
  ///Example api link: ///Example: https://www.metaweather.com/api/location/search/?query=san.
  Future<List<LocationSearch>> searchLocation(String query) async {
    final client = ApiClient(Dio(BaseOptions(contentType: "application/json")));
    var searchResult;
    await client.searchLocation(query).then(
      (data) {
        searchResult = data;
      },
    ).catchError(
      (error) {
        print(error);
      },
    );

    if (searchResult == null || !(searchResult is List)) {
      return [];
    }

    return (searchResult as List)
        .map(
          (data) => LocationSearch.fromJson(data),
        )
        .toList();
  }
}

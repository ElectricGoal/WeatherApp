///API weather
const baseUrl = 'https://www.metaweather.com';

///Get location data with [latitude] and [longtitude].
///
///Example: https://www.metaweather.com/api/location/search/?lattlong=36.96,-122.02
final locationUrl = (double lat, double long) =>
    '$baseUrl/api/location/search/?lattlong=$lat,$long';

///Get weather data with [locationId].
///
///Example: https://www.metaweather.com/api/location/44418/
final weatherUrl = (locationId) => '$baseUrl/api/location/$locationId';

///Get a list locations which ['title'] contains [query]. 
///
///Example: https://www.metaweather.com/api/location/search/?query=san
final queryUrl = (String query) => '$baseUrl/api/location/search/?query=$query';

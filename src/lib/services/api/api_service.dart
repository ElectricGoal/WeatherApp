import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://www.metaweather.com/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/api/location/search/")
  Future<dynamic> searchLocation(@Query("query") String query);

  @GET("/api/location/{id}")
  Future<dynamic> getWeatherWithId(@Path("id") int id);

  @GET("api/location/search/?lattlong={latt},{long}")
  Future<dynamic> getWeatherWithLattLong(
    @Path("latt") double latt,
    @Path("long") double long,
  );
}

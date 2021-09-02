import 'package:geolocator/geolocator.dart';

class LocationService {
  double latitude = 0;
  double longtitude = 0;

  Future<void> getCurrentLocation() async {
    await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.medium,
    ).then(
      (data) {
        latitude = data.latitude;
        longtitude = data.longitude;
      },
      // onError: (error) {
      //   print(error);
      // },
    ).catchError(
      (error) {
        print(error);
      },
    );
  }
}

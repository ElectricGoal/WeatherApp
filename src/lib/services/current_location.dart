import 'package:geolocator/geolocator.dart';

class CurrentLocation {
  double latitude = 0;
  double longtitude = 0;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.medium);
      latitude = position.latitude;
      longtitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}

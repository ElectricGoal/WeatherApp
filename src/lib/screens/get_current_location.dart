import 'package:flutter/material.dart';
import 'package:weather_app/screens/weather_location_screen.dart';
import 'package:weather_app/services/weather_service.dart';

///Get your current location data.
class GetCurrentLocation extends StatelessWidget {
  const GetCurrentLocation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black87,
      child: FutureBuilder<List<dynamic>>(
        future: WeatherService().getCurrentLocationId(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          //print(snapshot.data[0]);
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return _WaitingCase();
            default:
              if (snapshot.hasError) {
                return _ErrorCase();
              } else {
                if (snapshot.data.isEmpty) {
                  return _NoInternetCase();
                }
                return WeatherLocationScreen(
                  locationId: snapshot.data[0],
                  name: snapshot.data[1],
                );
              }
          }
        },
      ),
    );
  }
}

class _NoInternetCase extends StatelessWidget {
  const _NoInternetCase({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'No internet connection',
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _ErrorCase extends StatelessWidget {
  const _ErrorCase({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Some errors occurred!',
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _WaitingCase extends StatelessWidget {
  const _WaitingCase({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            color: Colors.white,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Getting your location...',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

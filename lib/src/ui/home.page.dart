import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class HomePage extends StatelessWidget {
  final Geolocator geolocator = Geolocator();

  final LocationOptions locationOptions = LocationOptions(
    accuracy: LocationAccuracy.best,
    distanceFilter: 0,
    timeInterval: 5000,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: StreamBuilder(
          stream: geolocator.getPositionStream(locationOptions),
          builder: (context, AsyncSnapshot<Position> snapshot) {
            if (!snapshot.hasData) return CircularProgressIndicator();
            print(snapshot.data.speed);
            print(snapshot.data.speedAccuracy);
            print('-------------------------');

            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('latitude: ${snapshot.data.latitude}'),
                Text('longitude: ${snapshot.data.longitude}'),
                Text('altitude: ${snapshot.data.altitude}'),
                Text('heading: ${snapshot.data.heading}'),
                Text('speed: ${snapshot.data.speed}'),
                Text('speedAccuracy: ${snapshot.data.speedAccuracy}'),
              ],
            );
          },
        ),
      ),
    );
  }
}

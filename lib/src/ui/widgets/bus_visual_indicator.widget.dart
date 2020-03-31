import 'dart:async';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mobility_project_mobile_2020/src/ui/widgets/app_bar_title_text.widget.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class BusVisualIndicator extends StatefulWidget {
  @override
  _BusVisualIndicatorState createState() => _BusVisualIndicatorState();
}

class _BusVisualIndicatorState extends State<BusVisualIndicator> {
  Geolocator geolocator = Geolocator();

  final LocationOptions locationOptions = LocationOptions(
    accuracy: LocationAccuracy.bestForNavigation,
    distanceFilter: 0,
    timeInterval: 7500,
  );

  Random random = new Random();
  int val = 0;
  String text = '';
  Color color = Colors.grey[200];
  IconData icon = Icons.space_bar;

  Timer timer;
  Position _position =
      Position(altitude: 0.0, speed: 0.0, latitude: 0.0, longitude: 0.0);

  StreamSubscription positionStream;
  double start = 48;
  double end = 56;

  @override
  void initState() {
    super.initState();
    positionStream = geolocator
        .getPositionStream(locationOptions)
        .listen((Position position) {
      print(position.toString());
      // Firestore.instance.collection('gps_tracking').add({
      //   'idBus': 'BS-001',
      //   'latitude': '${snapshot.data.latitude}',
      //   'longitude': '${snapshot.data.longitude}',
      //   'speed': '${snapshot.data.speed}',
      //   'date': '${DateTime.now().toString()}',
      // });
      setState(() {
        _position = position;
      });
    });

    // y
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizedBox(
          height: 8.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            AppBarTitleText(
              title: 'Bus',
              subtitle: 'Bs-206',
            ),
            AppBarTitleText(
              title: 'Recorrido',
              subtitle: 'Irpavi - PUC',
            ),
          ],
        ),
        SizedBox(
          height: 8.0,
        ),
        Text('Posición Actual'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            AppBarTitleText(
              subtitle: _position.latitude.toStringAsFixed(6).toString(),
              title: 'Latitud',
            ),
            AppBarTitleText(
              subtitle: _position.longitude.toStringAsFixed(6).toString(),
              title: 'Longitud',
            ),
            AppBarTitleText(
              subtitle: _position.speed.toStringAsFixed(3).toString(),
              title: 'Velocidad Aprox.',
            ),
          ],
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 24.0),
        ),
        SizedBox(
          height: 8.0,
        ),
        Icon(
          icon,
          size: 48,
          color: color,
        ),
        SizedBox(
          height: 16.0,
        ),
        StepProgressIndicator(
          totalSteps: 9,
          currentStep: val,
          selectedColor: color,
          unselectedColor: Colors.grey[200],
          customSize: (index) => 50.0,
        ),
      ],
    );
  }

  @override
  void dispose() {
    positionStream.cancel();
    super.dispose();
    print('**---- Dispose ----**');
    positionStream.cancel();
  }
}

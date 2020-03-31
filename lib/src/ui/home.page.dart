import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mobility_project_mobile_2020/src/ui/widgets/bus_drawer.widget.dart';
import 'package:mobility_project_mobile_2020/src/ui/widgets/bus_visual_indicator.widget.dart';

import 'widgets/app_bar_title_text.widget.dart';
import 'widgets/bus_indicator.widget.dart';

class HomePage extends StatelessWidget {
  final Geolocator geolocator = Geolocator();

  final LocationOptions locationOptions = LocationOptions(
    accuracy: LocationAccuracy.best,
    distanceFilter: 0,
    timeInterval: 7500,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: BusDrawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black87),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Información GPS del Bus',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w700,
              color: Colors.black87,
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
          constraints: BoxConstraints.expand(),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: BusVisualIndicator(),
              ),
              Divider(),
              _buildIndicadorBuses(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildIndicadorBuses() {
  return Expanded(
    flex: 2,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BusIndicator(
          busName: 'Bus-196',
          distanciaEta: 5.1,
          timeETA: 4.8,
          position: true,
        ),
        SizedBox(height: 8.0),
        Divider(),
        SizedBox(height: 8.0),
        BusIndicator(
          busName: 'Bus-106',
          distanciaEta: 2.2,
          timeETA: 5.7,
          position: false,
        ),
      ],
    ),
  );
}

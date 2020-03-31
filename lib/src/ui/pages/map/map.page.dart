import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatelessWidget {
  final List<Marker> listCheckPoints;
  final List<LatLng> listRoutePoints;

  MapPage({this.listCheckPoints, this.listRoutePoints});

  List<LatLng> latlng = List();

  final Set<Polyline> _polyline = {};

  @override
  Widget build(BuildContext context) {
    _polyline.add(
      Polyline(
        polylineId: PolylineId('toString()'),
        visible: true,
        //latlng is List<LatLng>
        points: listRoutePoints,
        color: Colors.blue,
        width: 4,
        consumeTapEvents: true,
      ),
    );
    return SafeArea(
      child: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          child: GoogleMap(
            // onMapCreated: _onMapCreated,
            polylines: _polyline,
            initialCameraPosition: CameraPosition(
              target: const LatLng(-16.496975592551678, -68.1870788574219),
              zoom: 10,
            ),
            markers: listCheckPoints.toSet(),
            // markers: _markers.values.toSet(),
          ),
        ),
      ),
    );
  }
}

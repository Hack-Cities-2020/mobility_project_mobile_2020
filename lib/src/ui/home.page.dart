import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
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
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Center(
            child: AppBarTitleText(
              title: 'Bus',
              subtitle: 'Bs-206',
            ),
          ),
          centerTitle: true,
          title: AppBarTitleText(
            title: 'Recorrido',
            subtitle: 'Irpavi - PUC',
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
          constraints: BoxConstraints.expand(),
          child: Column(
            children: <Widget>[
              _buildIndicadorBuses(),
              Divider(),
              Expanded(
                flex: 3,
                child: BusVisualIndicator(),
              )
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

// Container(
//         child: StreamBuilder(
//           stream: geolocator.getPositionStream(locationOptions),
//           builder: (context, AsyncSnapshot<Position> snapshot) {
//             if (!snapshot.hasData) return CircularProgressIndicator();
//             print(snapshot.data.speed);
//             print(snapshot.data.speedAccuracy);
//             print('-------------------------');

//             if (flag) {
//               print('sending');
//               Firestore.instance.collection('gps_tracking').add({
//                 'idBus': 'BS-001',
//                 'latitude': '${snapshot.data.latitude}',
//                 'longitude': '${snapshot.data.longitude}',
//                 'speed': '${snapshot.data.speed}',
//                 'date': '${Date.now().toString()}',
//               });
//             }

//             return Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 Text('latitude: ${snapshot.data.latitude}'),
//                 Text('longitude: ${snapshot.data.longitude}'),
//                 Text('altitude: ${snapshot.data.altitude}'),
//                 Text('heading: ${snapshot.data.heading}'),
//                 Text('speed: ${snapshot.data.speed}'),
//                 Text('speedAccuracy: ${snapshot.data.speedAccuracy}'),
//               ],
//             );
//           },
//         ),
//       ),

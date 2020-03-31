import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobility_project_mobile_2020/src/provider/routes.provider.dart';
import 'package:mobility_project_mobile_2020/src/ui/pages/map/map.page.dart';
import 'package:mobility_project_mobile_2020/src/ui/widgets/bus_drawer.widget.dart';

class RoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: BusDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Rutas de Buses',
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(color: Colors.black87),
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          child: FutureBuilder(
            future: RoutesProvider.getRoutes(),
            builder: (context, AsyncSnapshot<List> snapshot) {
              if (!snapshot.hasData)
                return Center(child: CircularProgressIndicator());
              return ListView.separated(
                separatorBuilder: (_, index) => Divider(),
                itemCount: snapshot.data.length,
                itemBuilder: (context, int index) {
                  List<LatLng> _listRoutePoints =
                      toLatLng(snapshot.data[index]['path']);
                  List<Marker> _listCheckPoints =
                      toMarker(snapshot.data[index]['checkpoints']);
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      child: Icon(
                        Icons.map,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(snapshot.data[index]['name']),
                    subtitle: Text(snapshot.data[index]['status']),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MapPage(
                                  listRoutePoints: _listRoutePoints,
                                  listCheckPoints: _listCheckPoints)));
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  List<LatLng> toLatLng(List<dynamic> list) {
    List<LatLng> aux = [];

    for (var item in list) {
      aux.add(LatLng(item['lat'], item['lng']));
    }

    return aux;
  }

  List<Marker> toMarker(List<dynamic> list) {
    List<Marker> aux = [];

    for (var item in list) {
      aux.add(Marker(
          markerId: MarkerId(item['lat'].toString() + item['lng'].toString()),
          position: LatLng(item['lat'], item['lng'])));
    }

    return aux;
  }
}

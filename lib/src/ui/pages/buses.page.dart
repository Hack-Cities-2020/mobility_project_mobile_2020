import 'package:flutter/material.dart';
import 'package:mobility_project_mobile_2020/src/provider/buses.provider.dart';
import 'package:mobility_project_mobile_2020/src/ui/widgets/bus_drawer.widget.dart';

class BusesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: BusDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Buses',
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(color: Colors.black87),
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          child: FutureBuilder(
            future: BusesProvider.getBuses(),
            builder: (context, AsyncSnapshot<List> snapshot) {
              if (!snapshot.hasData)
                return Center(child: CircularProgressIndicator());
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, int index) {
                  return ListTile(
                    title: Text(snapshot.data[index]['itinerario']),
                    subtitle: Text(snapshot.data[index]['conductor']),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

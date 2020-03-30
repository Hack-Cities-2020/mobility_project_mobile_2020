import 'package:flutter/material.dart';
import 'package:mobility_project_mobile_2020/src/provider/routes.provider.dart';
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
                  return ListTile(
                    title: Text(snapshot.data[index]['name']),
                    subtitle: Text(snapshot.data[index]['status']),
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

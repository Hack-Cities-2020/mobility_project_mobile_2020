import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobility_project_mobile_2020/src/provider/buses.provider.dart';
import 'package:mobility_project_mobile_2020/src/ui/widgets/app_bar_title_text.widget.dart';
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
              return ListView.separated(
                separatorBuilder: (_, index) => Divider(),
                itemCount: snapshot.data.length,
                itemBuilder: (context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.orangeAccent,
                      child: Icon(
                        Icons.directions_bus,
                        color: Colors.blueGrey.shade800,
                      ),
                    ),
                    title: Text(snapshot.data[index]['plate']),
                    subtitle: Text(snapshot.data[index]['model']),
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            padding: EdgeInsets.all(16.0),
                            height: MediaQuery.of(context).size.height / 2,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text(
                                  'Información de Bus',
                                  style: TextStyle(fontSize: 24.0),
                                ),
                                Row(
                                  // mainAxisAlignment:
                                  // MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Expanded(
                                      child: Center(
                                        child: AppBarTitleText(
                                          title: 'Año Fabricación:',
                                          subtitle: snapshot.data[index]['year']
                                              .toString(),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Center(
                                        child: AppBarTitleText(
                                          title: 'Placa:',
                                          subtitle: snapshot.data[index]
                                              ['plate'],
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Divider(),
                                Row(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Expanded(
                                      child: Center(
                                        child: AppBarTitleText(
                                          title: 'Fabricante',
                                          subtitle: snapshot.data[index]
                                              ['manufacturer'],
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Center(
                                        child: AppBarTitleText(
                                          title: 'Modelo',
                                          subtitle: snapshot.data[index]
                                              ['model'],
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Divider(),
                                Row(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Expanded(
                                      child: Center(
                                        child: AppBarTitleText(
                                          title: 'Capacidad',
                                          subtitle: snapshot.data[index]
                                                  ['capacity']
                                              .toString(),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Center(
                                        child: AppBarTitleText(
                                          title: 'Conductor',
                                          subtitle: snapshot.data[index]
                                              ['driver']['full_name'],
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      );
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
}

// id: 1
// plate: "456-789"
// model: "King Long"
// manufacturer: "King Motors"
// year: 2015
// capacity: 30
// driver: {id: "1", full_name: "Marco Leonardini", ci: "6166245"}
// route_id: 1

import 'package:flutter/material.dart';
import 'package:mobility_project_mobile_2020/src/provider/notifications.provider.dart';
import 'package:mobility_project_mobile_2020/src/ui/widgets/bus_drawer.widget.dart';

class NotificationsPage extends StatelessWidget {
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
            future: NotificationsProvider.getNotifications(),
            builder: (context, AsyncSnapshot<List> snapshot) {
              if (!snapshot.hasData)
                return Center(child: CircularProgressIndicator());
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, int index) {
                  IconData iconData;
                  Color iconColor;
                  switch (snapshot.data[index]['type']) {
                    case 'danger':
                      iconData = Icons.portable_wifi_off;
                      iconColor = Colors.redAccent;
                      break;
                    case 'info':
                      iconData = Icons.info;
                      iconColor = Colors.blueAccent;

                      break;
                    case 'warning':
                      iconData = Icons.warning;
                      iconColor = Colors.orangeAccent;

                      break;
                    case 'secure':
                      iconData = Icons.security;
                      iconColor = Colors.greenAccent;

                      break;
                    default:
                  }
                  return ExpansionTile(
                    title: Text(snapshot.data[index]['title']),
                    subtitle: Text(snapshot.data[index]['datetime']),
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 16.0,
                        ),
                        child: Text(
                          snapshot.data[index]['notification'],
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                    leading: Icon(
                      iconData,
                      color: iconColor,
                    ),
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

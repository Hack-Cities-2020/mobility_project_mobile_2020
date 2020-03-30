import 'package:flutter/material.dart';
import 'package:mobility_project_mobile_2020/src/ui/pages/buses.page.dart';
import 'package:mobility_project_mobile_2020/src/ui/pages/notifications.page.dart';
import 'package:mobility_project_mobile_2020/src/ui/pages/routes.page.dart';

class BusDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8.0),
              child: Image.asset(
                'images/la_paz_bus_logo.png',
                fit: BoxFit.cover,
                width: 100.0,
              ),
            ),
            Divider(),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text('List de Rutas'),
                    onTap: () {
                      // Navigator.pop(context);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RoutePage(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.directions_bus),
                    title: Text('Lista de buses'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BusesPage(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.notification_important),
                    title: Text('Notificaciones'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NotificationsPage(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.message),
                    title: Text('Notificar un imprevisto'),
                  ),
                  // ListTile(
                  //   leading: Icon(Icons.message),
                  //   title: Text('Mensajes'),
                  // ),
                  ListTile(
                    leading: Icon(Icons.history),
                    title: Text('Historico de Rendimiento'),
                  ),
                  ListTile(
                    leading: Icon(Icons.input),
                    title: Text('Cerrar Sesion'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

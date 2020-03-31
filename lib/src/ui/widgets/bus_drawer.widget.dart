import 'package:flutter/material.dart';
import 'package:mobility_project_mobile_2020/src/ui/pages/buses.page.dart';
import 'package:mobility_project_mobile_2020/src/ui/pages/notifications.page.dart';
import 'package:mobility_project_mobile_2020/src/ui/pages/notifier/notifier.page.dart';
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
                    leading: Icon(
                      Icons.home,
                      color: Colors.red,
                    ),
                    title: Text('Inicio'),
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
                    leading: Icon(Icons.map, color: Colors.red),
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
                    leading: Icon(
                      Icons.directions_bus,
                      color: Colors.red,
                    ),
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
                    leading: Icon(
                      Icons.notification_important,
                      color: Colors.red,
                    ),
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
                    leading: Icon(Icons.message, color: Colors.red),
                    title: Text('Notificar un imprevisto'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NotifierPage(),
                        ),
                      );
                    },
                  ),
                  // ListTile(
                  //   leading: Icon(Icons.mess ,color: Colors.red,age),
                  //   title: Text('Mensajes'),
                  // ),
                  ListTile(
                    leading: Icon(
                      Icons.history,
                      color: Colors.red,
                    ),
                    title: Text('Historico de Rendimiento'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.input,
                      color: Colors.red,
                    ),
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

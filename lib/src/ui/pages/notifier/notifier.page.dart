import 'package:flutter/material.dart';
import 'package:mobility_project_mobile_2020/src/ui/widgets/bus_drawer.widget.dart';

class NotifierPage extends StatelessWidget {
  final List<Map> mapNotifier = [
    {
      'title': 'Problemas Mecánicos',
      'subtitle': 'Relacionado con neumáticos, frenos, otros',
    },
    {
      'title': 'Problemas en la Ruta',
      'subtitle': 'Relacionado con bloqueos, inundaciones, otros en la ruta',
    },
    {
      'title': 'Problemas de capacidad',
      'subtitle': 'En el tope de capacidad de pasajeros',
    },
    {
      'title': 'Cambio de Ruta',
      'subtitle': 'Cambios de rutas imprevistas',
    },
    {
      'title': 'Informe de paradas',
      'subtitle': 'Paradas dañadas o maltratadas',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: BusDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Notificar Problema',
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(color: Colors.black87),
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          child: ListView.separated(
            itemCount: mapNotifier.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(mapNotifier[index]['title']),
                subtitle: Text(mapNotifier[index]['subtitle']),
                leading: Icon(Icons.vpn_key),
              );
            },
            separatorBuilder: (_, index) => Divider(),
          ),
        ),
      ),
    );
  }
}

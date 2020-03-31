import 'package:flutter/material.dart';
import 'package:mobility_project_mobile_2020/src/ui/widgets/bus_drawer.widget.dart';

class NotifierPage extends StatelessWidget {
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
            itemCount: 7,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Problemas Mecánicos'),
                subtitle: Text('Relacionado con neumáticos, frenos, otros'),
                leading: Icon(Icons.vpn_key),
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) {
                      return Container(
                          height: MediaQuery.of(context).size.height / 2,
                          child: Center(child: Text('send')));
                    },
                  );
                },
              );
            },
            separatorBuilder: (_, index) => Divider(),
          ),
        ),
      ),
    );
  }
}

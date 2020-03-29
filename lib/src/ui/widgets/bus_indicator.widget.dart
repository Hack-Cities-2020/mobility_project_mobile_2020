import 'package:flutter/material.dart';

import 'app_bar_title_text.widget.dart';

class BusIndicator extends StatelessWidget {
  final bool position;
  final String busName;
  final double timeETA;
  final double distanciaEta;

  const BusIndicator({
    this.busName = 'No Name',
    this.distanciaEta = 0.0,
    this.position = true,
    this.timeETA = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                busName,
                style: TextStyle(
                  // color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Icon(
                Icons.directions_bus,
                color: distanciaEta > 5 ? Colors.green : Colors.orange,
                size: 32.0,
              ),
            ],
          ),
          SizedBox(
            width: 12.0,
          ),
          Column(
            children: <Widget>[
              Text(
                position ? 'Adelante' : ' Atras',
                style: TextStyle(
                  // color: Colors.white,
                  fontSize: 22.0,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              AppBarTitleText(
                subtitle: '$timeETA min. / $distanciaEta km.',
                title: 'Tiempo / Distancia',
                textAlign: TextAlign.center,
              ),
            ],
          )
        ],
      ),
    );
  }
}

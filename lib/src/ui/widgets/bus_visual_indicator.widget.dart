import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mobility_project_mobile_2020/src/ui/widgets/app_bar_title_text.widget.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class BusVisualIndicator extends StatefulWidget {
  @override
  _BusVisualIndicatorState createState() => _BusVisualIndicatorState();
}

class _BusVisualIndicatorState extends State<BusVisualIndicator> {
  Random random = new Random();
  int val = 0;
  String text = '';
  Color color = Colors.grey[200];
  IconData icon = Icons.space_bar;

  double start = 48;
  double end = 56;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (timer) {
      val = random.nextInt(9);
      print(val);
      if (val < 4) {
        color = Colors.yellow.shade600;
        text = 'Bajar Velocidad';
        icon = Icons.arrow_downward;
      }
      if (val >= 4 && val < 6) {
        color = Colors.green.shade600;
        text = 'Mantener Velocidad';
        icon = Icons.space_bar;
      }
      if (val >= 6) {
        color = Colors.orange.shade600;

        text = 'Aumentar Velocidad';
        icon = Icons.arrow_upward;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          'Información GPS del Bus',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 16.0,
        ),
        Text('Posición Actual'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            AppBarTitleText(
              subtitle: '-16.9846513',
              title: 'Latitud',
            ),
            AppBarTitleText(
              subtitle: '-16.9846513',
              title: 'Longitud',
            ),
            AppBarTitleText(
              subtitle: '-16.9846513',
              title: 'Velocidad Aprox.',
            ),
          ],
        ),
        SizedBox(
          height: 16.0,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 24.0),
        ),
        SizedBox(
          height: 16.0,
        ),
        Icon(
          icon,
          size: 48,
          color: color,
        ),
        SizedBox(
          height: 16.0,
        ),
        StepProgressIndicator(
          totalSteps: 9,
          currentStep: val,
          selectedColor: color,
          unselectedColor: Colors.grey[200],
          customSize: (index) => 50.0,
        ),
      ],
    );
  }
}

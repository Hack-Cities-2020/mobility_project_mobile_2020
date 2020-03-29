import 'package:flutter/material.dart';

import 'package:mobility_project_mobile_2020/src/ui/home.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'La Paz Bus GPS Tracker App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          body1: TextStyle(
              // color: Colors.white,
              ),
        ),
        // iconTheme: IconThemeData(color: Colors.white),
      ),
      home: HomePage(),
    );
  }
}

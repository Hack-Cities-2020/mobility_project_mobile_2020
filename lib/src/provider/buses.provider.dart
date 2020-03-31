import 'dart:convert';

import 'package:http/http.dart' as http;

class BusesProvider {
  static Future<List> getBuses() async {
    var response = await http.get('http://192.168.0.109:5000/api/vehicle');
    return jsonDecode(response.body);
  }
}

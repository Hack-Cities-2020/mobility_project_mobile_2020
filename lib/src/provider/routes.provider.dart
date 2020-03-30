import 'dart:convert';

import 'package:http/http.dart' as http;

class RoutesProvider {
  static Future<List> getRoutes() async {
    var response = await http.get('http://192.168.0.108:5000/api/route');
    return jsonDecode(response.body);
  }
}

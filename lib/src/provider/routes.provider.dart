import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobility_project_mobile_2020/src/constants.dart';

class RoutesProvider {
  static Future<List> getRoutes() async {
    try {
      var response = await http.get(kBaseUrl + kRoutesApi);
      return jsonDecode(response.body);
    } catch (e) {
      return [];
    }
  }
}

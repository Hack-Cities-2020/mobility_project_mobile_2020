import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobility_project_mobile_2020/src/constants.dart';

class BusesProvider {
  static Future<List> getBuses() async {
    var response = await http.get(kBaseUrl + kVehiclesApi);
    return jsonDecode(response.body);
  }
}

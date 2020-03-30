import 'package:http/http.dart' as http;

class BusesProvider {
  static Future<List> getBuses() async {
    // var response = await http.get('http://192.168.0.108:5000/api/vehicle');
    // return jsonDecode(response.body);

    return [
      {
        'itinerario': 'Villa Salome - PUC',
        'conductor': 'Jose Perez',
        'place': '123-ABC',
      },
      {
        'itinerario': 'Chasquipampa - PUC',
        'conductor': 'Juan Mamani',
        'placa': '124-ABC',
      },
      {
        'itinerario': 'Inca LLojeta - PUC',
        'conductor': 'Pedro Quispe',
        'placa': '125-ABC',
      },
      {
        'itinerario': 'Irpavi II - PUC',
        'conductor': 'Jorge Mamani',
        'placa': '126-ABC',
      },
      {
        'itinerario': 'Achumani - San Pedro',
        'conductor': 'Roberto Huanca',
        'placa': '127-ABC',
      },
    ];
  }
}

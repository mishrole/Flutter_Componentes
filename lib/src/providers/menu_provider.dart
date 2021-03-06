import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    //cargarData();
  }

  // Promesa
  Future<List<dynamic>> cargarData() async {
    final response = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(response);
        print(dataMap['rutas']);
        opciones = dataMap['rutas'];
    return opciones;
  }
}

// Sólo se expone la instancia
final menuProvider = new _MenuProvider();
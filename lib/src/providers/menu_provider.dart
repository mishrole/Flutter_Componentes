import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    cargarData();
  }

  cargarData() {
    rootBundle.loadString('data/menu_opts.json')
      .then((data)  =>
        print(data));
  }
}

// Sólo se expone la instancia
final mennuProvider = new _MenuProvider();
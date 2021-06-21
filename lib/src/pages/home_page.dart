import 'package:flutter/material.dart';
import 'package:componentes/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes')),
      body: _lista(),
    );
  }
}

Widget _lista() {

  return FutureBuilder(
    future: menuProvider.cargarData(),
    initialData: [],
    builder: ( context, AsyncSnapshot<List<dynamic>> snapshot) {
      if(snapshot.hasError) {
        return Center(child: Text('Error'));
      }

      if(!snapshot.hasData) {
        return Center(child: Text('No hay data'));
      }

      //print(snapshot.data);
      return ListView(
        children: _listaItems(snapshot.data),
      );
    }
  );

  
  //print(mennuProvider.opciones);

  // Si el método tarda mucho en retornar la información, ralentiza la app
  /*
  menuProvider.cargarData().then((opciones) {
    print(opciones);
  });
  */

}

List<Widget> _listaItems(List<dynamic>? data) {
  
  final List<Widget> opciones = [];

  data?.forEach((opcion) {
    final widgetTemp = ListTile(
      title: Text(opcion['texto']),
      leading: Icon(Icons.add_alert, color: Colors.blue),
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
      onTap: () {

      },
    );

    opciones..add(widgetTemp)
    ..add(Divider());
  });

  return opciones;
}
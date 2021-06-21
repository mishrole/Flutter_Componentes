import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes Temp'),),
      body: ListView(
        // children: _crearItem()
        children: _crearItemsCorta()
      ),
    );
  }

  List<Widget> _crearItem() {
    List<Widget> lista = [];

    for (String opcion in opciones) {
      final tempWidget = ListTile(
        title: Text(opcion),
      );

      //(lista.add(tempWidget);
      //lista.add(Divider());

      lista..add(tempWidget)
      ..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorta() {
    var widgets = opciones.map((opcion) => 
    ListTile(
      title: Text(opcion)
    )).toList();

    return widgets;
  }
  
}
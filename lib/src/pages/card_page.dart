import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CardPage')),
      body: ListView(
        // padding: EdgeInsets.all(20),
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        children: <Widget>[
          _cardTipo1()
        ]
      ),
    );
  }
}

Widget _cardTipo1() {
  return Card(
    child: Column(children: [
      ListTile(
        leading: Icon(Icons.photo_album, color: Colors.blue),
        title: Text('Card'),
        subtitle: Text('Esta es la descripción de la tarjeta con muchísimo contenido'),
      ),
      Row(
        children: <Widget>[
          TextButton(child: Text('Cancelar'),
            onPressed: () {},
          ),
          TextButton(child: Text('Aceptar'),
            onPressed: () {},
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.end,
      )
    ],)
  );
}
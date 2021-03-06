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
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
        ]
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
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

  Widget _cardTipo2() {
    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://th.bing.com/th/id/OIP.9ftNIxFdXhhw1jqMYwDhMQHaEo?pid=ImgDet&rs=1'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 250.0,
            fit: BoxFit.cover,
            ),
          /*
          Image(
            image: NetworkImage('https://th.bing.com/th/id/OIP.9ftNIxFdXhhw1jqMYwDhMQHaEo?pid=ImgDet&rs=1')
          ),
          */
          Container(
            child: Text('Hola'),
            padding: EdgeInsets.all(10.0),)
        ],
      )
    );

    return Container(
      child: ClipRRect(child: card, borderRadius: BorderRadius.circular(20.0),),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ],
      )
    );
  }
}


import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page')
      ),
      body: Center(
        child: ElevatedButton(child: Text('Mostrar Alerta'),
        onPressed: () => _mostrarAlert(context),
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
          shape: StadiumBorder()
        )),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_left),
        onPressed: () {
          Navigator.pop(context);
        }
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        title: Text('Título'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Este es el contenido de la caja'),
            FlutterLogo(size: 100.0)
          ],
        ),
        actions: <Widget>[
          ElevatedButton(onPressed: () => Navigator.of(context).pop(), child: Text('Cancelar')),
          ElevatedButton(onPressed: () => Navigator.of(context).pop(), child: Text('Aceptar')),
        ],
      );
    });
  }
}
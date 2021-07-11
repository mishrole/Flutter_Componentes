import 'dart:async';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  ScrollController _scrollController = new ScrollController();

  List<int> _listaNumeros = [];
  int _ultimoItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _agregarFotos(10);

    _scrollController.addListener(() {

      if( _scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        // setState(() {
        // _agregarFotos(10);
        // });

        setState(() {
          fetchData();
        });

      }
    
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: Stack(
        children: <Widget>[
          _crearLista(),
          _crearLoading()
        ],
      ),
    );
  }

  Widget _crearLista() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _listaNumeros.length, 
      itemBuilder: (BuildContext context, int index) {

        final imagen = _listaNumeros[index];

        return FadeInImage(
          image: NetworkImage('https://picsum.photos/500/300/?image=$imagen'), 
          placeholder: AssetImage('assets/jar-loading.gif'),
        );
      },
      
    );
  }

  void _agregarFotos(int cantidad) {
    for (var i = 1; i < cantidad; i++) {
      _ultimoItem++;
      _listaNumeros.add(_ultimoItem);
    }

    setState(() {
      
    });
  }

  Future fetchData() async {
    _isLoading = true;
    setState(() {
      
    });

    final duration = new Duration ( seconds: 2 );

    new Timer(duration, respuestaHTTP);

  }

  void respuestaHTTP() {
    _isLoading = false;

    _scrollController.animateTo(
      _scrollController.position.pixels + 200,
      duration: Duration(milliseconds: 250), 
      curve: Curves.fastOutSlowIn
    );

    _agregarFotos(10);
  }

  Widget _crearLoading() {
    if(_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator()
            ],
          ),
          SizedBox(height: 15.0)
        ],
      );
    } else {
      return Container();
    }
  }
}
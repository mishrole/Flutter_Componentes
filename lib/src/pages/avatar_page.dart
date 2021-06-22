import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Avatar Page'), actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://boredhumans.b-cdn.net/faces2/505.jpg'),
              radius: 30.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.orange,
            ),
          )
        ]),
        body: Center(
          child: FadeInImage(
            image: NetworkImage('https://boredhumans.b-cdn.net/faces2/505.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(microseconds: 200),
          ),
        ));
  }
}

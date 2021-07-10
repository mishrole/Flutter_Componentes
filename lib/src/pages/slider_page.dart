import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({ Key? key }) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        // child: Text('Slider Page'),
        child: Column(children: <Widget>[
          _crearSlider(),
          _crearCheckbox(),
          _crearSwitch(),
          Expanded(child: _crearImagen())
        ],),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: ( _bloquearCheck ) ? null : (value) {
        setState(() {
          _valorSlider = value;
        });
      }
    );
  }

  Widget _crearCheckbox() {
    // return Checkbox (
    //   onChanged: (value) {
    //     setState(() {
    //       _bloquearCheck = value!;
    //     });
    //   },
    //   value: _bloquearCheck
    // );

    return CheckboxListTile(
      value: _bloquearCheck,
      title: Text('Bloquear Slider'),
      onChanged: (value) {
        setState(() {
          _bloquearCheck = value!;
        });
      }
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      value: _bloquearCheck,
      title: Text('Bloquear Slider'),
      onChanged: (value) {
        setState(() {
          _bloquearCheck = value;
        });
      }
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://instagram.flim25-1.fna.fbcdn.net/v/t51.2885-15/e35/141123096_136489254954716_3598171372012631768_n.jpg?_nc_ht=instagram.flim25-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=sAh6JkSkBkcAX_Zk1i1&edm=AP_V10EBAAAA&ccb=7-4&oh=de4a88feaa5bf00fb724952a01746189&oe=60EE3295&_nc_sid=4f375e'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

}
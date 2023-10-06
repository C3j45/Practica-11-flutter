import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePage extends StatefulWidget {
  @override
  State<SharePage> createState() => _SharePageState();
}

class _SharePageState extends State<SharePage> {
  int _edad = 0;
  String _nombre = '';
  _grabarDatos() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('edad', 22);
    prefs.setString('nombre', 'Luis López');
  }

  _leerDatos() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _edad = prefs.getInt('edad')!;
    _nombre = prefs.getString('nombre')!;
  }

  @override
  void initState() {
    _grabarDatos();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 11'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Nombre: $_nombre'),
          SizedBox(height: 15),
          Text('Edad: $_edad'),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _leerDatos();
          });
        },
        tooltip: 'Refrescar',
        child: Icon(Icons.refresh),
      ),
    );
  }
}

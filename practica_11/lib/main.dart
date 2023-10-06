import 'package:flutter/material.dart';
import 'package:practica_11/src/shared_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practica 11',
      home: SharePage(),
    );
  }
}

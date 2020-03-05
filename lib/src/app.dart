import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hola_mundo/src/pages/contador_page.dart';
import '../src/pages/contador_page.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ContadorPage()
      )
    );
  }

}
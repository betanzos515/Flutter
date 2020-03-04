
import 'package:flutter/material.dart';

class Home_Page extends StatelessWidget{

  final estiloTexto = TextStyle(fontSize:23);
  final conteo = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi  App'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Numero de Clicks',style:estiloTexto),
              Text('0', style: estiloTexto)
            ],
        ),
      ),
      floatingActionButton:FloatingActionButton(
        child:Icon(Icons.add),
        onPressed: (){
          print('Hola Mundo');
        },
      ),
    );
  }

}
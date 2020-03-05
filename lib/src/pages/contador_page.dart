import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  
  @override
  createState() => _ContadorPageState();

}

class _ContadorPageState extends State <ContadorPage>{
  final _estiloTexto = TextStyle(fontSize:23);
  int _conteo = 10;
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
              Text('Numero de Taps',style: _estiloTexto),
              Text('$_conteo', style: _estiloTexto)
            ],
        ),
      ),
      floatingActionButton:_crearBotones(),
    );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(child: Icon(Icons.restore), onPressed:(){
          setState(() {
             _conteo = 0;
          });
        }),
        Expanded(child: SizedBox(width: 5.0)),
        FloatingActionButton(child: Icon(Icons.remove), onPressed:(){
          if(_conteo > 0){
            setState(() {
              _conteo--;
            });
          }
          else{
            print('El contador ya esta en 0');
          }
        }),
        SizedBox(width: 20.0),
        FloatingActionButton(child: Icon(Icons.add), onPressed:(){
          setState(() {
            _conteo++;
          });
        })
      ],
    );
    
    
  }
}
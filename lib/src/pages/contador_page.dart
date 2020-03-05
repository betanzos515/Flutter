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
        FloatingActionButton(
          child: Icon(Icons.restore),
          onPressed:_resetear
        ),
        Expanded(child: SizedBox(width:0)),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed:_disminuir
        ),
        SizedBox(width: 20.0),
        FloatingActionButton(child: Icon(Icons.add), 
        onPressed:_agregar
        )
      ],
    );
  }

  void _agregar(){
    setState(()=>_conteo++); 
  }

  void _disminuir(){
    setState(() {
      if(_conteo > 0){
            setState(() {
              _conteo--;
            });
      }
      else{
            print('El contador ya esta en 0');
      }
    });
  }

  void _resetear(){
    setState(()=> _conteo = 0);
  }
}
import 'dart:ui';
import 'package:flutter/material.dart';

class PesquisaWidget extends StatelessWidget{

final String titulo;
final String foto;
final String descricao;

PesquisaWidget(this.titulo, this.foto, this.descricao): super();

@override
Widget build(BuildContext context){
  return new Center(
    child: 
      Column(children: <Widget>[
        
        Text(titulo),
        Image.asset(foto),
        Text(descricao),
        SizedBox(height: 20),
        Divider(
              color: Colors.black
            )
        
       
      ],),
  );
}




}
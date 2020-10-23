import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:xyzpesquisaclinica/faleconosco.dart';
import 'package:xyzpesquisaclinica/pesquisa.dart';
import 'package:xyzpesquisaclinica/sobrenos.dart';
import 'package:xyzpesquisaclinica/suaspesquisas.dart';



class BotaoWidget extends StatelessWidget{

final String titulo;
final String rota;


BotaoWidget(this.titulo, this.rota): super();

@override
Widget build(BuildContext context){
  return new Container(
                    width: 150,
                    height: 150,
                    margin: EdgeInsets.only(top: 10.0),
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                      child: Text(titulo, 
                      textAlign: TextAlign.center,
                      style: TextStyle( color: Colors.black, fontSize: 18 ),),
                      color: Colors.deepPurpleAccent[100],
                      
                      onPressed: (){
                        if(rota=="pesquisa"){
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListaPesquisa()),
                        );}
                        else
                          if(rota=="suaspesquisas"){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SuasPesquisasWidget()),
                            );}
                            else
                              if(rota=="sobrenos"){
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SobreNosWidget()),
                                );}
                                else
                                  if(rota=="faleconosco"){
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => FaleConoscoWidget()),
                                   );}

                      }
                    ),
                  );
                }

}

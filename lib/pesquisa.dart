import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:xyzpesquisaclinica/widget_pesquisa.dart';
import 'package:xyzpesquisaclinica/menu.dart';

class ListaPesquisa extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(
      title: new Text("Lista de pesquisas", style:TextStyle(color: Colors.deepPurpleAccent)), 
      backgroundColor: Colors.black, 
      iconTheme: IconThemeData(
      color: Colors.deepPurpleAccent),          
      ),
      body: 
      new SingleChildScrollView(
        child:
        new Column(children: <Widget>[
          new PesquisaWidget("Toxicidade do alpha arbutin ", "assets/imagens/laboratorio.jpg","entre para saber mais"),
          new PesquisaWidget("Efeito da propolis na cicatrizacao", "assets/imagens/lab3.jpg","entre para saber mais"),
          new PesquisaWidget("Estudo genetico", "assets/imagens/lab 4.jpg","entre para saber mais"),
          new PesquisaWidget("Testes cosmeticos", "assets/imagens/maquiagem.jpg","entre para saber mais"),
          botaoVoltar(context),

      ],
    ),
      ),
    );
  }
    botaoVoltar (BuildContext context){
      return Container(
      padding: const EdgeInsets.only(top:20),
      child: RaisedButton(
      child: Text("Voltar para o menu", 
        style: TextStyle( color: Colors.deepPurpleAccent, fontSize: 18,),),
      color: Colors.black,
      onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MenuWidget()),
        );
      }
    ),
  );
  

  }




}
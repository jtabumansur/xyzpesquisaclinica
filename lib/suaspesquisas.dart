import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:xyzpesquisaclinica/menu.dart';
import 'package:xyzpesquisaclinica/background.dart';


class SuasPesquisasWidget extends StatefulWidget{
  @override
  _SuasPesquisasWidgetState createState()=> _SuasPesquisasWidgetState();
}

class _SuasPesquisasWidgetState extends State<SuasPesquisasWidget>{

@override
Widget build(BuildContext context){
  return Scaffold(
      appBar: AppBar(
      leading: Image.asset('assets/imagens/mandala.png', fit: BoxFit.cover),
      title: Text("Suas pesquisas", style:TextStyle(color: Colors.deepPurpleAccent)),
      backgroundColor: Colors.black,           
      
    ),
    body: Stack(
      children: <Widget>[
        BackgroundWidget() ,
        ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Text("pesquisa 1"),
              Text("pesquisa 2"),
              Text("pesquisa 3"),
              botaoVoltar(context),

              
            ])

      ] 
    ), 
            
        
      );
 
        
        
       
   
}

exibirDialogo(BuildContext context){
  return showDialog(
    context: context,
    builder:(BuildContext context){
      return AlertDialog(
      backgroundColor: Colors.deepPurpleAccent[100],
      content: Text("Voce ainda nao participou de nenhuma pesquisa."),
      actions: <Widget>[
        FlatButton(
          child: Text("Voltar para o menu") ,
          onPressed: (){
            Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MenuWidget()),);
          }
        )
      ]
      );
    }
  );
  
  
}

botaoVoltar (BuildContext context){
  return Container(
    
    padding: const EdgeInsets.only(top:20),
    child: RaisedButton(
      child: Text("Voltar para o menu", 
        style: TextStyle( color: Colors.deepPurpleAccent, fontSize: 18,
      ),
    ),
    color: Colors.black,
    onPressed: (){
      //if(_formkey.currentState.validate(
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MenuWidget()),
            );
        //)
      }
    ),
  );
}

}

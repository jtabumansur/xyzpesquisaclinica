import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:xyzpesquisaclinica/login.dart';


class RecuperaSenhaWidget extends StatefulWidget{
  @override
  _RecuperaSenhaWidgetState createState()=> _RecuperaSenhaWidgetState();
}

class _RecuperaSenhaWidgetState extends State<RecuperaSenhaWidget>{
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtCpf = TextEditingController();
  
@override
Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      title: Text("Recuperacao de senha", style:TextStyle(color: Colors.deepPurpleAccent, fontSize: 15)),
      backgroundColor: Colors.black, 
      iconTheme: IconThemeData(
      color: Colors.deepPurpleAccent, ),          
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () { _reset();})
      ],
    ),
    body: Stack(
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop),
                image: new AssetImage(
                        'assets/imagens/moroccan-flower.png'))),
          ),
          Center( child:  SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child:  Form(
        key:_formkey,
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch ,
          children: <Widget>[
            
            campoEmail("Email",txtEmail, ),
            campoCpf("CPF",txtCpf),
            botaoEnviar(context), 
            botaoVoltar(context) ,    
            ],
        ),
      ) 
    ),),]),
  );     
}

campoEmail(rotulo, controle){
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: TextFormField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.deepPurpleAccent[900], fontSize: 20),
      decoration: InputDecoration(
        labelText: rotulo,
        labelStyle: TextStyle(
          color: Colors.deepPurpleAccent[500],
          fontSize: 12,
        ),
      ),
      controller: controle,
      validator: (value) {
        return(value.isEmpty) ? " Informe o valor" : null;
      },
    ),
  ); 
}
campoCpf(rotulo, controle){
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: TextFormField(
      keyboardType: TextInputType.number,
      style: TextStyle(color: Colors.deepPurpleAccent[900], fontSize: 20),
      decoration: InputDecoration(
        labelText: rotulo,
        labelStyle: TextStyle(
          color: Colors.deepPurpleAccent[500],
          fontSize: 12,
        ),
      ),
      controller: controle,
      validator: (value) {
        return(value.isEmpty) ? " Informe o valor" : null;
      },
    ),
  ); 
}

botaoEnviar (BuildContext context){
  return Container(
    padding: const EdgeInsets.only(top:20),
    width: 40,
    child: RaisedButton(
      child: Text("Enviar", 
        style: TextStyle( color: Colors.deepPurpleAccent, fontSize: 18,
      ),
    ),
    color: Colors.black,
    onPressed: (){
      if(_formkey.currentState.validate(
        //enviar email de recuperacao de senha
      )){
        
      }
    },
  ));
}
botaoVoltar (BuildContext context){  
  return Container(
    alignment: Alignment.topCenter,
   
    padding: const EdgeInsets.only(top:20),
    child: FlatButton(
      child: Text("Voltar para a tela de login", 
        style: TextStyle( color: Colors.deepPurpleAccent, fontSize: 10,
      ),
    ),
    color: Colors.white,
    onPressed: (){
     Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginWidget()),
            );
    },
  ));
}

void _reset(){
  setState((){
    txtEmail.text="";
    txtCpf.text="";
    
  });
}




}


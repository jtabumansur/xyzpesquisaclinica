import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:xyzpesquisaclinica/background.dart';
import 'package:xyzpesquisaclinica/recuperacaodesenha.dart';
import 'package:xyzpesquisaclinica/cadastro.dart';
import 'package:xyzpesquisaclinica/menu.dart';


class LoginWidget extends StatefulWidget{
  @override
  _LoginWidgetState createState()=> _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget>{
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController txtLogin = TextEditingController();
  TextEditingController txtSenha = TextEditingController();
  
@override
Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      title: Text("XYZ", style:TextStyle(color: Colors.deepPurpleAccent)),
      backgroundColor: Colors.black, 
      iconTheme: IconThemeData(
      color: Colors.deepPurpleAccent),          
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () { _reset();})
      ],
    ),
    body: Stack(
        children: <Widget>[
          BackgroundWidget(),
          Center( child:  SingleChildScrollView(
            
      padding: const EdgeInsets.all(20.0),
      child:  Form(
        key:_formkey,
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch ,
          children: <Widget>[
            Image.asset("assets/imagens/mandala.png", height: 150,alignment: Alignment.topCenter,),
            campoLogin("Login",txtLogin, ),
            campoSenha("Senha",txtSenha),
            botaoLogin(context),
            
            Container(
              child: Row(
                children: <Widget>[
                  botaoCadastrese(context),
                  botaoEsqueceuSenha(context),
                ],
              )
              
            )
            
            
          ],
        ),
      ) 
    ),),],)
  );     
}

campoLogin(rotulo, controle){
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 2),
    height: 35,
    child: TextFormField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.black, fontSize: 12),
      decoration: InputDecoration(
        labelText: rotulo,
        filled: true,
        fillColor: Colors.deepPurpleAccent[100],
        hintText: 'Login',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
      ),),
      controller: controle,
      validator: (value) {
        return(value.isEmpty) ? " Informe o valor" : null;
      },
    ),
  ); 
}
campoSenha(rotulo, controle){
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 2),
    height: 35,
    child: TextFormField(
      keyboardType: TextInputType.visiblePassword,
      style: TextStyle(color: Colors.black, fontSize: 12),
      decoration: InputDecoration(
        labelText: rotulo,
        filled: true,
        fillColor: Colors.deepPurpleAccent[100],
        hintText: 'Senha',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
      ),),
      controller: controle,
      validator: (value) {
        return(value.isEmpty) ? " Informe o valor" : null;
      },
    ),
  ); 
}

botaoLogin (BuildContext context){
  return Container(
    
    padding: const EdgeInsets.only(top:20),
    child: RaisedButton(
      child: Text("Efetuar login", 
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
botaoCadastrese (BuildContext context){  
  return Container(
    alignment: Alignment.centerLeft,
    padding: const EdgeInsets.only(top:5),
    child: FlatButton(
      child: Text("Cadastre-se", 
        style: TextStyle( color: Colors.deepPurpleAccent, fontSize: 10,
      ),
    ),
    color: Colors.transparent,
    onPressed: (){
     Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CadastroWidget()),
            );
    },
  ));
}
botaoEsqueceuSenha (BuildContext context){
  return Container(
    alignment: Alignment.centerRight,
    padding: const EdgeInsets.only(top:5),
    child: FlatButton(
      child: Text("Esqueceu a sua senha?", 
        style: TextStyle( color: Colors.deepPurpleAccent, fontSize: 10,
      ),
    ),
    color: Colors.transparent,
    onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => RecuperaSenhaWidget()));
      
    },
  ));
}

void _reset(){
  setState((){
    txtLogin.text="";
    txtSenha.text="";
    
  });
}




}


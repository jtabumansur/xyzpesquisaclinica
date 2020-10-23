import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:xyzpesquisaclinica/login.dart';


class CadastroWidget extends StatefulWidget{
  @override
  _CadastroWidgetState createState()=> _CadastroWidgetState();
}

class _CadastroWidgetState extends State<CadastroWidget>{
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController txtNome = TextEditingController();
  TextEditingController txtCpf = TextEditingController();
  TextEditingController txtRg = TextEditingController();
  TextEditingController txtTelefone = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtSenha = TextEditingController();
  
  
@override
Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      title: Text("Cadastro", style:TextStyle(color: Colors.deepPurpleAccent)),
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
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop),
                image: new AssetImage(
                        'assets/imagens/moroccan-flower.png'))),
          ),
          Center( child: 
            SingleChildScrollView(
      
              padding: const EdgeInsets.all(20.0),
              child:  Form(
                key:_formkey,
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.stretch ,
                  children: <Widget>[
                    campoTexto("Nome",txtNome, ),
                    campoTexto("CPF",txtCpf),
                    campoTexto("RG",txtRg, ),
                    campoTexto("Telefone",txtTelefone, ),
                    campoTexto("Email",txtEmail, ),
                    campoTexto("Senha",txtSenha, ),
                    botaoEnviar(context)          
                  ],
                ),
              ) 
            ),
          ),
        ],
      )
    );     
}

campoTexto(rotulo, controle){
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 1),
    height: 40,
    child: TextFormField(
      keyboardType: TextInputType.text,
      style: TextStyle(color: Colors.black, fontSize: 15),
      decoration: InputDecoration(
        labelText: rotulo,
        filled: true,
        fillColor: Colors.white,
        hintText: 'Login',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
      ),),
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
        style: TextStyle( color: Colors.deepPurpleAccent, fontSize: 20,
      ),
    ),
    color: Colors.black,
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
    txtNome.text="";
    txtCpf.text="";
    txtRg.text="";
    txtTelefone.text="";
    txtEmail.text="";
    txtSenha.text="";
    
  });
}




}


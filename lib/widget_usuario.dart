import 'package:flutter/material.dart';

class UsuarioWidget extends StatelessWidget{
    final String nome;
    final String cpf;
    final String rg;
    final String telefone;
    final String email; 
    final String senha;

    UsuarioWidget(this.nome, this.cpf, this.rg, this.telefone, this.email, this.senha): super();
    @override
    Widget build(BuildContext context){
        return new Center(
            child: 
              Column (children: <Widget>[
                Text(nome),
                Text(cpf),
                Text(rg),
                Text(telefone),
                Text(email),
                Text(senha),
              ],
            ),
        );
    }
}
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  @override
  //Contexto da aplicação
  Widget build(BuildContext context) {
    return Scaffold(
      //Qualquer variável do tema para obter utilizar a notação
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //Usado para centralização na tela
          SizedBox(
            width: double.infinity,
          ),
          //Ícones padrões do material
          Icon(
            Icons.fingerprint,
            size: 72,
            color: Theme.of(context).accentColor,
          ),
          //Usado para espaçamento
          SizedBox(
            height: 20,
          ),
          Text(
            "Meus Contatos",
            style: TextStyle(
              fontSize: 24,
              color: Theme.of(context).accentColor,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("OK"),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AdressContactView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Endereço do Contato"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 80,
            child: ListTile(
              title: Text(
                "Endereço Atual",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              //Três linhas no caso do subtítulo
              subtitle: Column(
                //Itens para o começo da coluna
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Rua Oswaldo Cruz, 157",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "Belo Horizonte - Minas Gerais",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              //É três linhas no caso do subtítulo
              isThreeLine: true,
            ),
          ),
          Container(
            height: 60,
            //Alterar padding apenas na horizontal ou vertical, utilizar essa opção
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Pesquisar",
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //Preencher o espaço faltante
          Expanded(
            child: Container(
              color: Colors.blue.withOpacity(0.2),
              //Exibir mapa aqui
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {},
        child: Icon(
          Icons.my_location,
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }
}

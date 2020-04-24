import 'package:contacts/android/models/model-contacts.dart';
import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  var contatos = new List<ContactsModel>();

  TodoList() {
    contatos = [];
    contatos.add(ContactsModel(
      id: "1",
      name: "Magno",
      email: "magno.ufvjm@gmail.com",
      telefone: "5531999065776",
    ));
    contatos.add(ContactsModel(
      id: "2",
      name: "Luiz",
      email: "lluiz.omg@gmail.com",
      telefone: "5531999065776",
    ));
  }

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  //Estrutura para obter valor digitado em um textformfield
  var textoObtido = TextEditingController();

  void Adicionar() {
    setState(() {
      widget.contatos.add(
        ContactsModel(name: textoObtido.text),
      );
      textoObtido.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Contact List"),
        elevation: 0,
        leading: Icon(
          Icons.insert_emoticon,
          color: Theme.of(context).primaryColor,
        ),
      ),
      //Preencher com o builder para apresentação suavizada dos itens a medida que forem subindo.
      //Itens que forem do pai acessar com widget.
      //Redenrização dos itens na tela item builder
      body: ListView.builder(
        itemCount: widget.contatos.length,
        itemBuilder: (BuildContext context, int index) {
          final contato = widget.contatos[index];
          return ListTile(
            title: Text(
              contato.name,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            subtitle: Column(
              //Itens para o começo da coluna
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  contato.email,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  contato.telefone,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
          //Caso os dados de uma lista sejam atualizados, utilizar o setState(() {})
        },
      ),
    );
  }
}

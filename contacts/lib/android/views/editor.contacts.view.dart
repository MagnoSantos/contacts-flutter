import 'package:contacts/android/models/model-contacts.dart';
import 'package:flutter/material.dart';

class EditorContactView extends StatelessWidget {
  final ContactsModel contactsModel;

  //Construtor
  EditorContactView({this.contactsModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: contactsModel == null
            ? Text("Novo Contato")
            : Text("Editar Contato"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      //Lista com rolagem assim como o ListView, porém com um elemento
      body: SingleChildScrollView(
        //Descolar do canto da rolagem
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: <Widget>[
              //Caixa de texto
              TextFormField(
                initialValue: contactsModel?.name,
                //Ao salvar atualiza valor no modelo de dados
                onSaved: (valor) {
                  contactsModel.name = valor;
                },
              ),
              TextFormField(
                initialValue: contactsModel?.telefone,
                onSaved: (valor) {
                  contactsModel.name = valor;
                },
              ),
              TextFormField(
                initialValue: contactsModel?.email,
                onSaved: (valor) {
                  contactsModel.name = valor;
                },
              ),
              SizedBox(
                height: 40,
              ),
              //Botao com ícone, dentro do container para expandir o botão
              Container(
                width: double.infinity,
                child: FlatButton.icon(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {},
                  icon: Icon(
                    Icons.save,
                    color: Theme.of(context).accentColor,
                  ),
                  label: Text(
                    "Salvar",
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

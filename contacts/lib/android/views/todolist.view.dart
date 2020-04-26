import 'dart:convert';
import 'package:contacts/android/models/itens-todo.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TodoList extends StatefulWidget {
  var itens = new List<Item>();

  TodoList() {
    itens = [];
  }

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  var textController = TextEditingController();

  Future<void> adicionarItem() async {
    if (textController.text == null || textController.text.isEmpty) return;

    setState(() {
      widget.itens.add(
        Item(
          titulo: textController.text,
          feito: false,
        ),
      );
      textController.clear();
      salvarDados();
    });
  }

  Future<void> removerItem(int index) async {
    setState(() {
      widget.itens.removeAt(index);
      salvarDados();
    });
  }

  //Tratativa para shared preferences para salvar os dados
  salvarDados() async {
    var sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('data', jsonEncode(widget.itens));
  }

  //Tratativa para shared preferences para ler os dados
  Future leituraDados() async {
    var sharedPreferences = await SharedPreferences.getInstance();
    var data = sharedPreferences.getString('data');

    if (data != null) {
      var jsonDecodificado = jsonDecode(data);
      var listaItens = jsonDecodificado.map((x) => Item.fromJson(x)).toList();
      setState(() {
        widget.itens = listaItens;
      });
    }
  }

  _TodoListState() {
    leituraDados();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: TextFormField(
          //text, phone or adressemail
          keyboardType: TextInputType.text,
          controller: textController,
          style: TextStyle(
            fontSize: 18,
          ),
          decoration: InputDecoration(
            labelText: "Adicionar nova tarefa",
          ),
        ),
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
        itemCount: widget.itens.length,
        itemBuilder: (context, int index) {
          final item = widget.itens[index];
          return Dismissible(
            background: Container(
              color: Colors.blue.withOpacity(0.1),
            ),
            onDismissed: (direcao) {
              removerItem(index);
            },
            key: Key(item.titulo),
            child: CheckboxListTile(
              activeColor: Theme.of(context).primaryColor,
              title: Text(item.titulo),
              value: item.feito,
              onChanged: (valor) {
                //Alterar status
                setState(() {
                  item.feito = valor;
                  salvarDados();
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: adicionarItem,
        child: Icon(
          Icons.add,
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }
}

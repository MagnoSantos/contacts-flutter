import 'package:contacts/android/models/itens-todo.dart';
import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  var itens = new List<Item>();

  TodoList() {
    itens = [];

    itens.add(
      Item(titulo: "Começar a estudar flutter", feito: true),
    );
    itens.add(
      Item(titulo: "Começar a estudar react", feito: false),
    );
    itens.add(
      Item(titulo: "Começar a pós-graduação", feito: false),
    );
  }

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  var textController = TextEditingController();

  Future<void> AdicionarItem() async {
    if (textController.text == null || textController.text.isEmpty) return;

    setState(() {
      widget.itens.add(
        Item(
          titulo: textController.text,
          feito: false,
        ),
      );
      textController.clear();
    });
  }

  Future<void> RemoverItem(int index) async {
    setState(() {
      widget.itens.removeAt(index);
    });
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
              RemoverItem(index);
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
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: AdicionarItem,
        child: Icon(
          Icons.add,
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }
}

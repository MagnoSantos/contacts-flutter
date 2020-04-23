import 'package:contacts/android/models/model-contacts.dart';
import 'package:contacts/android/views/adresscontact.view.dart';
import 'package:contacts/android/views/editor.contacts.view.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contato"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
            width: double.infinity,
          ),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(200),
              image: DecorationImage(
                image: NetworkImage(
                    "https://scontent.fplu3-1.fna.fbcdn.net/v/t31.0-0/p206x206/22769594_1110463165723468_3297529458347686252_o.jpg?_nc_cat=108&_nc_sid=110474&_nc_eui2=AeFle42iBKXwNkKRMYtxJPDIIzB0b-h_1_YjMHRv6H_X9nsc77XQcQS2T8v8Jf2HUdCcCk5gQj9IRU_KNJI7LGKn&_nc_ohc=MFlh5JxWawMAX-BZjcA&_nc_ht=scontent.fplu3-1.fna&_nc_tp=6&oh=1c70c99a007d52dc1dd9d22ff2707e25&oe=5EC5B1EE"),
              ),
            ),
          ),
          //Espaçamento
          SizedBox(
            height: 10,
          ),
          //Apresentação de dados do usuário
          Text(
            "Luiz Otávio",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "+55 31 99906-5776",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "lluiz.omg@gmail.com",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          //Espaçamento
          SizedBox(
            height: 20,
          ),
          //Colocar os itens em linha, utilizando Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                color: Theme.of(context).primaryColor,
                child: Icon(
                  Icons.phone,
                  color: Theme.of(context).accentColor,
                ),
                //Propriedade para deixar arrendondado os botões
                shape: CircleBorder(
                  side: BorderSide.none,
                ),
              ),
              FlatButton(
                onPressed: () {},
                color: Theme.of(context).primaryColor,
                child: Icon(
                  Icons.email,
                  color: Theme.of(context).accentColor,
                ),
                shape: CircleBorder(
                  side: BorderSide.none,
                ),
              ),
              FlatButton(
                onPressed: () {},
                color: Theme.of(context).primaryColor,
                child: Icon(
                  Icons.camera_alt,
                  color: Theme.of(context).accentColor,
                ),
                shape: CircleBorder(
                  side: BorderSide.none,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          ListTile(
            title: Text(
              "Endereço",
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
            trailing: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AdressContactView(),
                  ),
                );
              },
              child: Icon(
                Icons.pin_drop,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditorContactView(
                contactsModel: ContactsModel(
                    id: "1",
                    name: "Luiz Otávio",
                    email: "lluiz.omg@gmail.com",
                    telefone: "55319906-5776"),
              ),
            ),
          );
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.edit,
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }
}

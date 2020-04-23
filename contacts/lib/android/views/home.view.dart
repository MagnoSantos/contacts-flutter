import 'package:contacts/android/views/details.view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Meus Contatos"),
        centerTitle: true,
        //Botão sem elevação com ícone (leading e action - botão de um lado e do outro).
        leading: FlatButton(
          onPressed: () {},
          child: Icon(
            Icons.search,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      //Propriedade para apresentação com rolagem - ListView
      //Row e column para layout, o ListView possui o builder para leitura de dados de API
      body: ListView(
        children: <Widget>[
          //Auxilia muito nos casos de exibição
          ListTile(
            leading: Container(
              width: 48,
              height: 48,
              //Borda arredondada de 48 pixels
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(48),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://scontent.fplu3-1.fna.fbcdn.net/v/t31.0-0/p206x206/22769594_1110463165723468_3297529458347686252_o.jpg?_nc_cat=108&_nc_sid=110474&_nc_eui2=AeFle42iBKXwNkKRMYtxJPDIIzB0b-h_1_YjMHRv6H_X9nsc77XQcQS2T8v8Jf2HUdCcCk5gQj9IRU_KNJI7LGKn&_nc_ohc=MFlh5JxWawMAX-BZjcA&_nc_ht=scontent.fplu3-1.fna&_nc_tp=6&oh=1c70c99a007d52dc1dd9d22ff2707e25&oe=5EC5B1EE"),
                  )),
            ),
            title: Text("Luiz Otávio"),
            subtitle: Text("+ 55 31 99906-5776"),
            //Propriedade para o botão posicionado ao lado
            trailing: FlatButton(
              onPressed: () {
                //Adiciona ou remove um item da tela - Navegação entre páginas
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsView(),
                  ),
                );
              },
              child: Icon(
                Icons.announcement,
                color: Theme.of(context).primaryColor,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Theme.of(context).accentColor,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}

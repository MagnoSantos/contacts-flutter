class ContactsModel {
  String id;
  String name;
  String email;
  String telefone;

  //Construtor
  ContactsModel({this.id, this.name, this.email, this.telefone});

  //Mapeamento do json
  ContactsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    telefone = json['telefone'];
  }

  //Mapeamento para json
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> dados = new Map<String, dynamic>();
    dados['id'] = this.id;
    dados['name'] = this.name;
    dados['email'] = this.email;
    dados['telefone'] = this.telefone;
    return dados;
  }
}

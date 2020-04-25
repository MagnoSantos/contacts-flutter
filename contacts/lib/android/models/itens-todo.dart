class Item {
  int id;
  String titulo;
  bool feito;

  Item({this.id, this.titulo, this.feito});

  Item.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    titulo = json['titulo'];
    feito = json['feito'];
  }

  Map<String, dynamic> toJson() {
    var dados = new Map<String, dynamic>();
    dados['id'] = this.id;
    dados['titulo'] = this.titulo;
    dados['feito'] = this.feito;

    return dados;
  }
}

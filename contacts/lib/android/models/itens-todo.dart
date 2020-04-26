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
    var data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['titulo'] = this.titulo;
    data['feito'] = this.feito;

    return data;
  }
}

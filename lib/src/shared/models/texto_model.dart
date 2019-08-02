class TextoModel {
  int autor;
  String titulo;
  String texto;

   TextoModel({this.texto, this.titulo,this.autor});

   TextoModel.fromJson(Map<String, dynamic> json) {
    titulo = json['title'];//titulo
    autor = json['userId'];//id_user
    texto = json['body'];//texto
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['titulo'] = this.titulo;
    data['id_user'] = this.autor;
    data['texto'] = this.texto;
    return data;
  }
}
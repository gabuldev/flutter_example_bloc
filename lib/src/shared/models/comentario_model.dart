class ComentarioModel {
  String texto;
  int idPost;
  int idUser;

  ComentarioModel({this.texto, this.idPost, this.idUser});

  ComentarioModel.fromJson(Map<String, dynamic> json) {
    texto = json['texto'];
    idPost = json['id_post'];
    idUser = json['id_user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['texto'] = this.texto;
    data['id_post'] = this.idPost;
    data['id_user'] = this.idUser;
    return data;
  }
  
}

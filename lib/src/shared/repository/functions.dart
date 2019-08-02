import 'package:dio/dio.dart';

abstract class Functions{
  
  //? METODOS DO POST DO FORUM

  Future<Response> getPost();
  Future<Response> createPost(Map<String,dynamic> data);
  Future<Response> updatePost(Map<String,dynamic> data,int id);
  Future<Response> deletePost(int id);

  //? METODOS DE COMENTARIOS EM POSTS

  Future<Response> getComentario();
  Future<Response> createComentario(Map<String,dynamic> data);
  Future<Response> updateComentario(Map<String,dynamic> data,int id);
  Future<Response> deleteComentario(int id);
  
}
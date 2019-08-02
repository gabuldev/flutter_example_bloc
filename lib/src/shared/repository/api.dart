
import 'package:dio/dio.dart';
import 'package:flutter_talks_design/src/shared/repository/functions.dart';


class Api implements Functions{

  final Dio _client;

 Api(this._client){
   _client.options.baseUrl ="https://jsonplaceholder.typicode.com"; //TODO: PUT URL
 }

  @override
  Future<Response> createComentario(Map<String,dynamic> data) async {
    return await _client.post(
    "/comentarios",
    data: data
    );
  }

  @override
  Future<Response> createPost(Map<String,dynamic> data) async {
    return await _client.post(
    "/posts",
    data: data
    );
  }

  @override
  Future<Response> deleteComentario(int id) async{
   return await _client.delete("/comentarios/$id");
  }

  @override
  Future<Response> deletePost(int id) async {
    
    return await _client.delete("/posts/$id");
  }

  @override
  Future<Response> getComentario() async {
    return await _client.get("/comentarios");
  }

  @override
  Future<Response> getPost() async{
   return await _client.get("/posts");
  }

  @override
  Future<Response> updateComentario(Map<String,dynamic> data, int id) async{
    return await _client.put(
    "/comentarios/$id",
    data: data
    );
  }

  @override
  Future<Response> updatePost(Map<String,dynamic> data, int id) async{
    return await _client.put(
    "/posts/$id",
    data: data
    );
  }


}
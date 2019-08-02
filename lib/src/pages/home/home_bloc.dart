import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:dio/dio.dart';
import 'package:flutter_talks_design/src/shared/models/texto_model.dart';
import 'package:flutter_talks_design/src/shared/repository/repository.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc extends BlocBase {
  final Repository repo;
  HomeBloc(this.repo);

  var posts = BehaviorSubject<Response>();
  Sink<Response> get responseIn => posts.sink;
  Observable<List<TextoModel>> get postsOut => posts.switchMap(observablePost);

  Stream<List<TextoModel>> observablePost(Response response) async*{
      if(response.statusCode == 200){
        yield (response.data as List).map((item) => TextoModel.fromJson(item)).toList();
      }
      else
      yield <TextoModel>[];
      
  }  

  void getPosts()async {
    var res = await repo.client.getPost();
    responseIn.add(res);
  }

  @override
  void dispose() {
    posts.close();
    super.dispose();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_talks_design/src/pages/discussion/discussion_page.dart';
import 'package:flutter_talks_design/src/pages/home/home_bloc.dart';
import 'package:flutter_talks_design/src/pages/home/home_module.dart';
import 'package:flutter_talks_design/src/pages/login/login_page.dart';
import 'package:flutter_talks_design/src/pages/post/post_page.dart';
import 'package:flutter_talks_design/src/shared/models/texto_model.dart';
import 'package:flutter_talks_design/src/shared/widgets/post_card/post_card_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<StatefulWidget> {

      var bloc = HomeModule.to.getBloc<HomeBloc>();

    @override
    void initState() {
     bloc.getPosts();
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "GrapeForum",
            style: TextStyle(
                color: Colors.purpleAccent, fontWeight: FontWeight.w200),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.exit_to_app,
                  color: Colors.purpleAccent,
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => LoginPage()));
                })
          ],
          backgroundColor: Colors.white,
          elevation: 1.0,
          brightness: Brightness.light,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.purple,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => PostPage([])));
          },
        ),
        body: StreamBuilder<List<TextoModel>>(
          stream: bloc.postsOut,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<TextoModel> list = snapshot.data;
              if(list.isNotEmpty){
              return ListView.builder(
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return FlatButton(
                  child: PostCardWidget(
                    text: list[index].texto,
                    autor: list[index].autor,
                    title: list[index].titulo,
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => DiscussionPage()));
                  },
                );
              },
            );
              }else{
                return Center(child: Text("Nenhum post encontrado"),);
              }
            } else {
              return Center(child: CircularProgressIndicator(),);
            }
          }
        ));
  }
}

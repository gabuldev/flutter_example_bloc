import 'package:dio/dio.dart';
import 'package:flutter_talks_design/src/shared/repository/api.dart';
import 'package:flutter_talks_design/src/shared/repository/repository.dart';
import 'package:flutter_talks_design/src/shared/widgets/comment_card/comment_card_bloc.dart';
import 'package:flutter_talks_design/src/shared/widgets/post_card/post_card_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

import 'app_bloc.dart';
import 'app_widget.dart';
class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => CommentCardBloc()),
        Bloc((i) => PostCardBloc()),
        Bloc((i) => AppBloc()),
      ];

  @override
  List<Dependency> get dependencies => [
    Dependency((i) => Repository(Api(Dio())))
  ];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}

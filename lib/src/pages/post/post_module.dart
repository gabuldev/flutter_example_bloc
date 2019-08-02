import 'package:flutter_talks_design/src/pages/post/post_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

import 'post_page.dart';


class PostModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => PostBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => PostPage([]);

  static Inject get to => Inject<PostModule>.of();
}

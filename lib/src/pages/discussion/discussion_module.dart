import 'package:flutter_talks_design/src/pages/discussion/discussion_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

import 'discussion_page.dart';

class DiscussionModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => DiscussionBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => DiscussionPage();

  static Inject get to => Inject<DiscussionModule>.of();
}

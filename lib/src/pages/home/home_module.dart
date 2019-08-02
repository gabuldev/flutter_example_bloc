
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter_talks_design/src/app/app_module.dart';
import 'package:flutter_talks_design/src/shared/repository/repository.dart';

import 'home_bloc.dart';
import 'home_page.dart';

class HomeModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => HomeBloc(AppModule.to.getDependency<Repository>())),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => HomePage();

  static Inject get to => Inject<HomeModule>.of();
}

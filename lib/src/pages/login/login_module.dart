import 'package:flutter_talks_design/src/pages/login/widgets/recovery_account/recovery_account_bloc.dart';
import 'package:flutter_talks_design/src/pages/login/widgets/create_account/create_account_bloc.dart';
import 'package:flutter_talks_design/src/pages/login/login_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';


class LoginModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => RecoveryAccountBloc()),
        Bloc((i) => CreateAccountBloc()),
        Bloc((i) => LoginBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => LoginPage();

  static Inject get to => Inject<LoginModule>.of();
}

import 'package:coffee/app/sign_in/sign_in.dart';
import 'package:coffee/app/splash/splash_screen.dart';
import 'package:coffee/app/tasks/tasks_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/auth_bloc.dart';

class AuthPage extends StatelessWidget {
  const AuthPage();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthStates>(
      builder: (context, state) {
        if (state == AuthStates.Authenticated)
          return TasksPage();
        else if (state == AuthStates.Unauthenticated) return SignInPage();
        return SplashScreen();
      },
    );
  }
}

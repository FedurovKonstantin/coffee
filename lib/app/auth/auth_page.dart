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
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: AuthView(),
    );
  }
}

class AuthView extends StatelessWidget {
  const AuthView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is AuthAuthenticated)
          return TasksPage();
        else if (state is AuthUnauthenticated) return SignInPage();
        return SplashScreen();
      },
    );
  }
}

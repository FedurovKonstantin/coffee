import 'package:coffee/app/auth/bloc/auth_bloc.dart';
import 'package:coffee/app/auth/repositories/fire_auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/sign_in_bloc.dart';

class SignInPage extends StatelessWidget {
  const SignInPage();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => SignInBloc(
        authBloc: context.read<AuthBloc>(),
        authRepository: FireAuthRepository(),
      )..add(
          SignInStarted(),
        ),
      child: SignInView(),
    );
  }
}

class SignInView extends StatelessWidget {
  const SignInView();

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

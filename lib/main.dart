import 'package:coffee/app/auth/auth_page.dart';
import 'package:coffee/app/auth/repositories/fire_auth_repository.dart';
import 'package:coffee/app/my_observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/auth/bloc/auth_bloc.dart';
import 'app/theme/bloc/theme_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = MyObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(
            authRepository: FireAuthRepository(),
          )..add(
              AuthStarted(),
            ),
        ),
        BlocProvider(
          create: (context) => ThemeBloc(),
        ),
      ],
      child: MyAppView(),
    );
  }
}

class MyAppView extends StatelessWidget {
  const MyAppView();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthPage(),
    );
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coffee/app/auth/bloc/auth_bloc.dart';
import 'package:coffee/app/auth/repositories/auth_repository.dart';
import 'package:equatable/equatable.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthRepository authRepository;
  final AuthBloc authBloc;

  SignInBloc({
    required this.authBloc,
    required this.authRepository,
  }) : super(SignInInitial());

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    if (event is SignInStarted) {
      try {
        await authRepository.signInAnonymously();
        authBloc.add(AuthAuthenticated());
        yield SignInSuccess();
      } on Exception catch (e) {
        yield SignInFailure(
          errorMessage: e.toString(),
        );
      }
    }
  }
}

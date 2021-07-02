import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coffee/app/auth/repositories/auth_repository.dart';
import 'package:equatable/equatable.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthRepository authRepository;

  SignInBloc({
    required this.authRepository,
  }) : super(SignInInitial());

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    if (event is SignInStarted) {
      try {
        await authRepository.signInAnonymously();
      } on Exception catch (e) {}
    }
  }
}

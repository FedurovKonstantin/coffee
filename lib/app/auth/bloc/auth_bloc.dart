import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coffee/app/auth/repositories/auth_repository.dart';
import 'package:coffee/app/sign_in/sign_in.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthStates> {
  final AuthRepository authRepository;

  AuthBloc({
    required this.authRepository,
  }) : super(AuthStates.Unknown);

  @override
  Stream<AuthStates> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is AuthStarted) {
      final isUserSignedIn = await authRepository.getUserId();
      if (isUserSignedIn == null) {
        yield AuthStates.Unauthenticated;
      } else {
        yield AuthStates.Authenticated;
      }
    }
  }
}

part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthAuthenticated extends AuthEvent {}

class AuthStarted extends AuthEvent {}

class AuthUnauthenticated extends AuthEvent {}

part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class AutheventLogin extends AuthEvent{
  final String email;
  final String password;
  AutheventLogin({required this.email, required this.password});
}

class AutheventLogout extends AuthEvent{}
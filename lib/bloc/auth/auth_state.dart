part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthSetInitial extends AuthState {}
final class AuthStateLoading extends AuthState {}
final class AuthStateLoaded extends AuthState {}

final class AuthStateError extends AuthState{
  final String message;
  AuthStateError({required this.message});
}

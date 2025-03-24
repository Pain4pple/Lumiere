import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthLocalState {}

class AuthInitial extends AuthLocalState {}

class AuthLoading extends AuthLocalState {}

class Authenticated extends AuthLocalState {
  final User user;

  Authenticated(this.user);
}

class Unauthenticated extends AuthLocalState {}

class AuthError extends AuthLocalState {
  final String message;

  AuthError(this.message);
}

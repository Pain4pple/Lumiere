// ignore_for_file: library_prefixes

import 'package:firebase_auth/firebase_auth.dart';
import 'package:movie_app/features/auth/domain/models/auth_user.dart' as UserModel;

abstract class AuthRepository {
  Future<UserModel.AuthUser?> signUp(String email, String password);
  Future<UserModel.AuthUser?> signIn(String email, String password);
  Future<UserModel.AuthUser?> signInWithGoogle(String email, String password);
  Future<void> signOut();
  User? getCurrentUser();
  Stream<bool> isAuthenticated();
}

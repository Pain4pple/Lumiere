// ignore_for_file: library_prefixes

import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  void signUpWithEmail(String email, String password);
  UserCredential loginWithEmail(String email, String password);
  void loginWithGoogle(String email, String password);
  void logout();
}

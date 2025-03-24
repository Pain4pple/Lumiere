// import 'dart:developer';

// import 'package:dio/dio.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:movie_app/features/auth/domain/models/auth_user.dart' as UserModel;
// import 'package:movie_app/features/auth/domain/repositories/auth_repository.dart';

// class AuthRepositoryImpl implements AuthRepository {
//   final FirebaseClient supabase;

//   AuthRepositoryImpl({required this.supabase});
//   @override
//   User? getCurrentUser() {
//     try {
//       final user = Supabase.instance.client.auth.currentUser;
//       if (user != null) {
//         log('User ID: ${user.id}');
//         log('Email: ${user.email}');
//         return user;
//       } else {
//         log('No user is signed in.');
//         return null;
//       }
//     } on DioException catch (e, stackTrace) {
//       log("API Call Failed: $e");
//       log("Stack Trace: $stackTrace");
//     }
//     return null;
//   }

//   @override
//   Stream<bool> isAuthenticated() {
//     return supabase.auth.onAuthStateChange.map((event) => event.session != null);
//   }

//   @override
//   Future<UserModel.AuthUser?> signIn(String email, String password) async {
//     final response = await supabase.auth.signInWithPassword(email: email, password: password);
//     if (response.user != null) {
//       return UserModel.AuthUser(id: response.user!.id, email: response.user!.email!);
//     }
//     return null;
//   }

//   @override
//   Future<UserModel.AuthUser?> signInWithGoogle(String email, String password) async {
//     try {
//       final googleSignIn = GoogleSignIn(scopes: ['email', 'profile']);
//       final googleUser = await googleSignIn.signIn();
//       if (googleUser == null) {
//         throw Exception('Google sign-in was canceled');
//       }

//       final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
//       final String? idToken = googleAuth.idToken;
//       if (idToken == null) {
//         throw Exception('Failed to retrieve ID token');
//       }
//       // Sign in with Supabase
//       final response = await Supabase.instance.client.auth.signInWithIdToken(provider: OAuthProvider.google, idToken: idToken);

//       if (response.user != null) {
//         return UserModel.AuthUser(id: response.user!.id, email: response.user!.email!);
//       }
//       return null;
//     } catch (e) {
//       throw Exception("Google Sign-In failed: $e");
//     }
//   }

//   @override
//   Future<void> signOut() async {
//     await supabase.auth.signOut();
//   }

//   @override
//   Future<UserModel.AuthUser?> signUp(String email, String password) async {
//     try {
//       final httpResponse = await supabase.auth.signUp(email: email, password: password);
//       if (httpResponse.user != null) {
//         return UserModel.AuthUser(id: httpResponse.user!.id, email: httpResponse.user!.email!);
//       } else {
//         return null;
//       }
//     } catch (e) {
//       throw Exception("Google Sign-In failed: $e");
//     }
//   }
// }

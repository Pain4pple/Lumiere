import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/features/auth/presentation/screens/login_screen.dart';
import 'package:movie_app/features/auth/presentation/screens/signup_screen.dart';
import 'package:movie_app/features/auth/presentation/screens/splash_screen.dart';
import 'package:movie_app/features/movie_details/presentation/screens/movie_details_screen.dart';
import 'package:movie_app/features/movie_list/presentation/screens/movie_list_screen.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => SplashScreen()),
    GoRoute(path: '/login', builder: (context, state) => LoginScreen()),
    GoRoute(path: '/signup', builder: (context, state) => SignupScreen()),
    GoRoute(path: '/home', builder: (context, state) => MovieListScreen()),
    GoRoute(
      path: '/movie/:id',
      builder: (context, state) {
        final movieId = int.parse(state.pathParameters['id']!);
        return MovieDetailsScreen(movieId: movieId);
      },
    ),
  ],
  redirect: (context, state) {
    final isAuthenticated = FirebaseAuth.instance.currentUser != null;
    final goingToAuthPage = state.uri.toString() == '/login' || state.uri.toString() == '/signup';
    final isAtSplash = state.uri.toString() == '/';

    log("Redirect Check - isAuthenticated: $isAuthenticated, currentRoute: ${state.uri}");

    if (isAtSplash) {
      if (isAuthenticated) return '/home';
      return '/login';
    }

    if (!isAuthenticated && !goingToAuthPage) {
      log("Redirecting to /login");
      return '/login';
    }

    if (isAuthenticated && goingToAuthPage) {
      log("Redirecting to /home");
      return '/home';
    }

    return null;
  },
);

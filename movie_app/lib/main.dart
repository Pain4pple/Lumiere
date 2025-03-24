import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_app/config/theme/app_themes.dart';
import 'package:movie_app/core/di/injection_container.dart';
import 'package:movie_app/config/routes/app_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:movie_app/features/auth/presentation/blocs/auth_cubit.dart';
import 'package:movie_app/features/auth/presentation/blocs/auth_state.dart';
import 'package:movie_app/features/auth/presentation/screens/login_screen.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  initializeDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => AuthCubit())],
      child: Builder(
        builder:
            (context) => MaterialApp.router(
              routerConfig: appRouter,
              theme: AppThemes.lightTheme,
              darkTheme: AppThemes.darkTheme,
              themeMode: ThemeMode.system,
              debugShowCheckedModeBanner: false,
            ),
      ),
    );
  }
}

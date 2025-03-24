import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/features/auth/presentation/blocs/auth_cubit.dart';
import 'package:movie_app/features/auth/presentation/widgets/button_decoration.dart';
import 'package:movie_app/features/auth/presentation/widgets/google_signin.dart';
import 'package:movie_app/features/auth/presentation/widgets/text_field_decoration.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text('Welcome Back', style: TextStyle(fontSize: 24)),
                  Text('to Lumière', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),
                  const SizedBox(height: 20),

                  //textfield for email
                  TextFieldDecoration(
                    textFormField: TextFormField(controller: emailController, decoration: InputDecoration(hintText: 'Email address')),
                  ),

                  const SizedBox(height: 20),

                  //textfield for password
                  TextFieldDecoration(
                    textFormField: TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(hintText: 'Password'),
                      obscureText: true,
                    ),
                  ),

                  const SizedBox(height: 20),

                  //textbutton for login
                  ButtonDecoration(
                    button: TextButton(
                      onPressed: () {
                        context.read<AuthCubit>().loginWithEmail(emailController.text, passwordController.text);
                      },
                      child: Text('Log in', style: ThemeData().textTheme.headlineLarge!.copyWith(fontSize: 18)),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // divider with horizontal lines
                  Row(
                    children: [
                      Expanded(child: Divider(color: Colors.grey.shade400, thickness: 1, endIndent: 10)),
                      Text("or sign in with", style: ThemeData().textTheme.labelMedium!.copyWith(color: Colors.white)),
                      Expanded(child: Divider(color: Colors.grey.shade400, thickness: 1, indent: 10)),
                    ],
                  ),
                  const SizedBox(height: 20),

                  //button for google sign in
                  GoogleSignin(),
                ],
              ),

              const SizedBox(height: 50),

              TextButton(
                onPressed: () {
                  context.go('/signup');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('New to Lumière?'),
                    const SizedBox(width: 5),
                    Text('Sign up', style: TextStyle(color: Color.fromARGB(255, 206, 255, 30))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

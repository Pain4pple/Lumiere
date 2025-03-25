import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/features/auth/presentation/blocs/auth_cubit.dart';
import 'package:movie_app/features/auth/presentation/widgets/button_decoration.dart';
import 'package:movie_app/features/auth/presentation/widgets/google_signin.dart';
import 'package:movie_app/features/auth/presentation/widgets/text_field_decoration.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

  void _signUp() {
    if (_formKey.currentState!.validate()) {
      context.read<AuthCubit>().signUpWithEmail(emailController.text, passwordController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 100),
                  Column(
                    children: [
                      const Text('Create an account', style: TextStyle(fontSize: 24)),
                      TextButton(
                        onPressed: () {
                          context.replace('/login');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Already have an account?'),
                            const SizedBox(width: 5),
                            const Text('Login', style: TextStyle(color: Color.fromARGB(255, 206, 255, 30))),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Email Field
                      TextFieldDecoration(
                        textFormField: TextFormField(
                          controller: emailController,
                          decoration: const InputDecoration(hintText: 'Email address'),
                          validator: _validateEmail,
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Password Field
                      TextFieldDecoration(
                        textFormField: TextFormField(
                          controller: passwordController,
                          decoration: const InputDecoration(hintText: 'Password'),
                          obscureText: true,
                          validator: _validatePassword,
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Sign-up Button
                      ButtonDecoration(
                        button: TextButton(
                          onPressed: _signUp,
                          child: Text('Continue', style: ThemeData().textTheme.headlineLarge!.copyWith(fontSize: 18)),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Divider
                      Row(
                        children: [
                          Expanded(child: Divider(color: Colors.grey.shade400, thickness: 1, endIndent: 10)),
                          Text("or sign up with", style: ThemeData().textTheme.labelMedium!.copyWith(color: Colors.white)),
                          Expanded(child: Divider(color: Colors.grey.shade400, thickness: 1, indent: 10)),
                        ],
                      ),
                      const SizedBox(height: 20),
                      // Google Sign-in Button
                      GoogleSignin(),
                    ],
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

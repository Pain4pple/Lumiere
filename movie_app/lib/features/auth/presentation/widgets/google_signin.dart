import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/features/auth/presentation/blocs/auth_cubit.dart';
import 'package:movie_app/features/auth/presentation/blocs/auth_state.dart';

class GoogleSignin extends StatelessWidget {
  const GoogleSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthLocalState>(
      listener: (context, state) {
        if (state is Authenticated) {
          context.replace('/home');
        }
      },
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: state is AuthLoading ? null : () => context.read<AuthCubit>().loginWithGoogle(),
            child:
                state is AuthLoading
                    ? const CircularProgressIndicator()
                    : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("lib/assets/images/google_logo.png", height: 24),
                          const SizedBox(width: 5),
                          Text('Sign in with Google'),
                        ],
                      ),
                    ),
          ),
        );
      },
    );
  }
}

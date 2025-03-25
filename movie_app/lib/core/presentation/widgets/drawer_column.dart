import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/features/auth/presentation/blocs/auth_cubit.dart';

class DrawerColumn extends StatelessWidget {
  const DrawerColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text("Logout"),
          onTap: () {
            context.read<AuthCubit>().logout();
            context.replace('/login');
          },
        ),
        ListTile(
          leading: Icon(Icons.info_outline, color: const Color.fromARGB(223, 92, 92, 92)),
          title: Text("About the app", style: TextStyle(color: const Color.fromARGB(223, 92, 92, 92))),
          onTap: () {
            context.go('/settings');
          },
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

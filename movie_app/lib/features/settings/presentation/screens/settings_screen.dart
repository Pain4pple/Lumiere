import 'package:flutter/material.dart';
import 'package:movie_app/core/presentation/widgets/app_bar_with_back.dart';
import 'package:movie_app/core/presentation/widgets/drawer_column.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: Drawer(child: DrawerColumn()),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [const Color.fromARGB(121, 0, 0, 0), Color.fromARGB(30, 206, 255, 30)],
          ),
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 150, child: Image.asset('lib/assets/images/haerin_logo.png')),
            const SizedBox(height: 12),
            Text('About the developer', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
            const SizedBox(height: 5),
            Text('Lara Nicole Gatchalian', style: TextStyle(fontSize: 14)),
            Text('Email: lara.gatchalian12@gmail.com', style: TextStyle(fontSize: 14)),
            Text('Github: Pain4pple', style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}

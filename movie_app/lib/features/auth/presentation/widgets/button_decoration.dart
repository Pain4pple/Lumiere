import 'package:flutter/material.dart';

class ButtonDecoration extends StatelessWidget {
  const ButtonDecoration({super.key, required this.button});
  final Widget button;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: const Color.fromARGB(255, 206, 255, 30), borderRadius: BorderRadius.circular(50)),
      child: Padding(padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5), child: button),
    );
  }
}

import 'package:flutter/material.dart';

class TextFieldDecoration extends StatelessWidget {
  const TextFieldDecoration({super.key, required this.textFormField});
  final TextFormField textFormField;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: const Color.fromARGB(70, 50, 65, 71), borderRadius: BorderRadius.circular(50)),
      child: Padding(padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5), child: textFormField),
    );
  }
}

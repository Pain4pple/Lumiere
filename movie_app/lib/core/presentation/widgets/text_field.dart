import 'package:flutter/material.dart';

class TextField extends StatelessWidget {
  const TextField({super.key, required this.textFormField});

  final TextFormField textFormField;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color.fromARGB(255, 202, 201, 199)),
      child: textFormField,
    );
  }
}

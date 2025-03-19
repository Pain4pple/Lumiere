import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  _buildTextField() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color.fromARGB(255, 202, 201, 199)),
      child: TextFormField(decoration: InputDecoration(border: InputBorder.none)),
    );
  }

  _buildButton() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color.fromARGB(255, 202, 201, 199)),
      child: TextButton(onPressed: () {}, child: Text("")),
    );
  }
}

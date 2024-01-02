import 'package:flutter/material.dart';
import 'package:flutter_learn/demos/password_text_field_learn.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [PasswordTextField()],
      ),
    );
  }
}

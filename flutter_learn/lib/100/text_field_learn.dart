import 'package:flutter/material.dart';
import 'package:flutter_learn/product/language/language_item.dart';

class TextFieldLearn extends StatelessWidget {
  const TextFieldLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
              keyboardType: TextInputType.emailAddress,
              autofillHints: const [AutofillHints.email],
              textInputAction: TextInputAction.next,
              maxLength: 20,
              style: const TextStyle(color: Colors.black),
              decoration: _EmailInputDecoration().emailDecoration),
          const TextField()
        ],
      ),
    );
  }
}

class _EmailInputDecoration {
  final emailDecoration = const InputDecoration(
    filled: true,
    fillColor: Colors.grey,
    label: Text(LanguageItems.email),
    prefixIcon: Icon(Icons.email),
    prefixIconColor: Colors.red,
  );
}

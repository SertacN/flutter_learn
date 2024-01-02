import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isSecure = true;

  void _changeSecureVisibility() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofillHints: const [AutofillHints.password],
      keyboardType: TextInputType.visiblePassword,
      obscureText: _isSecure,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        hintText: 'Password',
        suffix: _animatedVisibilityIconButton(),
      ),
    );
  }

  // ignore: unused_element
  IconButton _visibilityIconButton() {
    return IconButton(
        onPressed: () {
          _changeSecureVisibility();
        },
        icon: Icon(_isSecure ? Icons.visibility : Icons.visibility_off));
  }

  IconButton _animatedVisibilityIconButton() {
    return IconButton(
        onPressed: () {
          _changeSecureVisibility();
        },
        icon: AnimatedCrossFade(
            firstChild: const Icon(Icons.visibility),
            secondChild: const Icon(Icons.visibility_off),
            crossFadeState: _isSecure ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1)));
  }
}

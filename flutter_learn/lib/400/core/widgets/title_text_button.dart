import 'package:flutter/material.dart';

class TitleTextButton extends StatelessWidget {
  const TitleTextButton({super.key, required this.onPressed, required this.title});
  final VoidCallback onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Center(child: Text(title)),
    );
  }
}

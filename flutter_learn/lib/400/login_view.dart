import 'package:flutter/material.dart';
import 'package:flutter_learn/400/widgets/button/facebook_button.dart';

/// FacebookButton kullandım. custom yapıldı. içerisinde de titletextbutton var. atomik'e örnek
class LoginView34 extends StatefulWidget {
  const LoginView34({super.key});
  @override
  State<LoginView34> createState() => _LoginView34State();
}

class _LoginView34State extends State<LoginView34> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          FacebookButton(
            onPressed: (model, {errorMessage}) {
              if (model != null) {
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(errorMessage!)));
              }
            },
          )
        ],
      ),
    );
  }
}

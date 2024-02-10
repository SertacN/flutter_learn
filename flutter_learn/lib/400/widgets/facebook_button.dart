import 'package:flutter/material.dart';
import 'package:flutter_learn/400/core/widgets/title_text_button.dart';

class FacebookButton extends StatelessWidget {
  const FacebookButton({super.key, required this.onPressed});
  final void Function(FacebookModel model) onPressed;
  @override
  Widget build(BuildContext context) {
    return TitleTextButton(
      onPressed: () {
        const fiveLength = '12345'.length == 5;
        if (fiveLength) {
          onPressed(FacebookModel('token', 'adad@'));
        }
      },
      title: 'Facebook',
    );
  }
}

class FacebookModel {
  final String token;
  final String mail;

  FacebookModel(this.token, this.mail);
}

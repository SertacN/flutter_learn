import 'package:flutter/material.dart';
import 'package:flutter_learn/400/core/widgets/buttons/title_text_button.dart';

class FacebookButton extends StatelessWidget {
  const FacebookButton({super.key, this.onPressed});
  final void Function(FacebookModel? model, {String? errorMessage})? onPressed;

  @override
  Widget build(BuildContext context) {
    return TitleTextButton(
      onPressed: () {
        const fiveLength = '12345sd'.length == 5;
        if (fiveLength) {
          onPressed!(FacebookModel('token', 'adad@'));
        } else {
          onPressed!(null, errorMessage: 'User not found!');
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

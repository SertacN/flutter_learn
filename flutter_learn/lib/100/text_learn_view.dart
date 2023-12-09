import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({
    super.key,
    this.userName,
  });
  final String myName = 'Sertaç';
  final ProjectMessage keys = ProjectMessage();
  final String? userName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'Welcome $myName ${myName.length}',
            style: const TextStyle(
              color: Colors.lime,
              fontSize: 16,
              decoration: TextDecoration.underline,
              letterSpacing: 2,
              fontStyle: FontStyle.italic,
            ),
          )),
          Text('Hello $myName ${myName.length}',
              style: ProjectStyle.welcomeStyle),
          Text('Hello $myName ${myName.length}',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(color: Colors.blueAccent)),
          Text(keys.welcome),
          Text(userName ?? '')
        ],
      ),
    );
  }
}

// OOP Kullanımları
class ProjectStyle {
  static TextStyle get welcomeStyle => const TextStyle(
      color: Colors.lime,
      fontSize: 16,
      decoration: TextDecoration.underline,
      letterSpacing: 2,
      fontStyle: FontStyle.italic);
}

class ProjectMessage {
  String welcome = 'Hello';
}

class ProjectSuperStyle extends TextStyle {
  const ProjectSuperStyle()
      : super(
            color: Colors.lime,
            fontSize: 16,
            decoration: TextDecoration.underline,
            letterSpacing: 2,
            fontStyle: FontStyle.italic);
}

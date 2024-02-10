import 'package:flutter/material.dart';
import 'package:flutter_learn/400/core/extension/context_extension.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: context.paddingLow,
        height: context.height * 0.1,
        color: context.thema.primaryColor,
        child: Text('data', style: context.textTheme.displayLarge?.copyWith(color: context.colorScheme.error)),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class IconLearn extends StatelessWidget {
  IconLearn({super.key});

  final IconColors iconColors = IconColors();
  final IconSize iconSize = IconSize();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Learn'),
      ),
      body: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.mail_lock_outlined),
              color: Theme.of(context).colorScheme.error,
              iconSize: iconSize.iconSmall),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.mail_lock_outlined),
              color: iconColors.amaranth,
              iconSize: IconSize().iconMedium),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.mail_lock_outlined),
              color: IconColors().amaranth,
              iconSize: IconSize().iconLarge)
        ],
      ),
    );
  }
}

class IconColors {
  final Color amaranth = const Color(0xFFE21D4C);
}

class IconSize {
  final double iconSmall = 24;
  final double iconMedium = 32;
  final double iconLarge = 48;
}

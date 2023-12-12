import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  ColorLearn({super.key});
  final ColorItems colorItems = ColorItems();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            color: ColorItems().blueGem,
            child: const Text('Hello World'),
          ),
          Container(
            color: colorItems.california,
            child: Text('Hello World',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: Theme.of(context).primaryColor)),
          ),
        ],
      ),
    );
  }
}

class ColorItems {
  final Color california = const Color(0xFFFBA109);
  final Color blueGem = const Color.fromRGBO(74, 22, 167, 1);
}

import 'package:flutter/material.dart';
import 'package:flutter_learn/core/random_image.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});
  final _cardHeight = 50.0;
  final _cardWidth = 200.0;
  final _iconSize = 32.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(bottom: _cardHeight / 2, child: const RandomImage()),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: _customButton(),
                  ),
                  Positioned(width: _cardWidth, height: _cardHeight, bottom: 0, child: _customCard())
                ],
              )),
          const Spacer(
            flex: 6,
          )
        ],
      ),
    );
  }

  IconButton _customButton() {
    return IconButton(
        iconSize: _iconSize,
        onPressed: () {},
        icon: const Icon(
          Icons.heart_broken,
          color: Colors.red,
        ));
  }

  Card _customCard() {
    return const Card(
      color: Colors.blue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}

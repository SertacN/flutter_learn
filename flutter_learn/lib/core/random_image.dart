import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({super.key, this.heigh = 100});

  final String imageUrl = 'https://picsum.photos/200/300';
  final double? heigh;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: BoxFit.fill,
      height: heigh,
    );
  }
}

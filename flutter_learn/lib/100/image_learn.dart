import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [SizedBox(width: 300, height: 400, child: PngImage(name: ImageItems().appleBook))],
      ),
    );
  }
}

class ImageItems {
  final String appleBook = '798898';
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/png/$name.png',
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
    );
  }
}

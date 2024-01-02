import 'package:flutter/material.dart';

class ImageLearn200View extends StatefulWidget {
  const ImageLearn200View({super.key});

  @override
  State<ImageLearn200View> createState() => _ImageLearn200ViewState();
}

class _ImageLearn200ViewState extends State<ImageLearn200View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(ImagePath.collection_image.path()),
    );
  }
}

// ignore: constant_identifier_names
enum ImagePath { collection_image }

extension ImagePathExtension on ImagePath {
  String path() {
    switch (this) {
      case ImagePath.collection_image:
        return 'assets/png/collection_image.png';
    }
  }
}

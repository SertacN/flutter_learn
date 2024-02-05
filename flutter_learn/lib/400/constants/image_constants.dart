import 'package:flutter/material.dart';

/// Lottie Learn'de test edildi.
@immutable
class ImageConstants {
  const ImageConstants._();

  static final String collection = 'collection_image'.toPng;
}

extension _StringPath on String {
  String get toPng => 'assets/png/$this.png';
}

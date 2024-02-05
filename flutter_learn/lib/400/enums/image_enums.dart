/// Lottie Learn'de test edildi.

enum ImageEnum {
  collection('collection_image');

  final String value;
  const ImageEnum(this.value);
  String get toPng => 'assets/png/$value.png';
}

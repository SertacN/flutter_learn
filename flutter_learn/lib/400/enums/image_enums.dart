/// Lottie Learn'de test edildi.

enum ImageEnum {
  collection('collection_image');

  final String value;
  const ImageEnum(this.value);
  String get toPng => 'assets/png/$value.png';
}

// enum LottieItems {
//   themeChanger('lottie_theme_changer');

//   final String value;
//   const LottieItems(this.value);

//   String get lottiePath => 'assets/lottie/$value.json';
// }

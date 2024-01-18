enum LottieItems { themeChanger }

extension LottieItemsExtension on LottieItems {
  String _path() {
    switch (this) {
      case LottieItems.themeChanger:
        return 'lottie_theme_changer';
    }
  }

  String get lottiePath => 'assets/lottie/${_path()}.json';
}

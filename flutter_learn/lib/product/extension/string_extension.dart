extension ColorStringExtension on String? {
  int colorValue() {
    final newColor = this?.replaceFirst('#', '0xff');
    return int.parse(newColor ?? '');
  }
}

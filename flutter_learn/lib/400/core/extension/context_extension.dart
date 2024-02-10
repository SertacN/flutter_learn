import 'dart:math';

import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;
}

extension ThemeExtension on BuildContext {
  ThemeData get thema => Theme.of(this);
  TextTheme get textTheme => thema.textTheme;
  ColorScheme get colorScheme => thema.colorScheme;
}

extension PaddingExtension on BuildContext {
  EdgeInsets get paddingLow => const EdgeInsets.all(8);
}

extension RandomColorExtension on BuildContext {
  Color get randomColor => Colors.primaries[Random().nextInt(17)];
}

import 'package:easy_localization/easy_localization.dart';

extension StringLocalization on String {
  String get locale => this.tr();
}

extension ColorStringExtension on String? {
  int colorValue() {
    final newColor = this?.replaceFirst('#', '0xff');
    return int.parse(newColor ?? '');
  }
}

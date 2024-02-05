import 'package:flutter/material.dart';

/// birden fazla dil desteği sunuluyorsa.
/// main kısmındaki ayarlamalar. herhangi bir key eklendiğinde script çalıştırılmalı.
/// güzel bir extension yazıldı.
/// assets içene jsonlar yazılıp. uygulama içi textler buradan çekilecek.
/// lottie learnde örneği var. key kullanımları ve dil değiştirme.
class LanguageManager {
  LanguageManager._init();
  static final LanguageManager _instance = LanguageManager._init();
  static LanguageManager get instance => _instance;

  final trLocal = const Locale('tr', 'TR');
  final enLocal = const Locale('en', 'US');

  List<Locale> get supportedLocales => [trLocal, enLocal];
}

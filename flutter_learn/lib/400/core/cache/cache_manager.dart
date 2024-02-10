import 'package:flutter_learn/400/core/cache/preferences_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// main içinde proje başlangıcında çağırdım.
class CacheManager {
  CacheManager._();
  SharedPreferences? _preferences;

  static final CacheManager _instance = CacheManager._();
  static CacheManager get instance => _instance;

  static preferencesInit() async {
    instance._preferences ??= await SharedPreferences.getInstance();
    return;
  }

  Future<void> setStringValue(PreferencesKeys key, String value) async {
    await _preferences?.setString(key.toString(), value) ?? '';
  }

  String getStringValue(PreferencesKeys key) {
    return _preferences?.getString(key.toString()) ?? '';
  }
}

import 'package:shared_preferences/shared_preferences.dart';

enum SharedKey { counter }

class SharedCacheManager {
  SharedPreferences? _preferences;

  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future<bool?> saveToCache(SharedKey key, int value) async {
    return await _preferences?.setInt(key.name, value);
  }

  Future<bool?> removeToCache(SharedKey key) async {
    return await _preferences?.remove(key.name) ?? false;
  }

  int? getFromCache(SharedKey key) {
    return _preferences?.getInt(key.name);
  }
}

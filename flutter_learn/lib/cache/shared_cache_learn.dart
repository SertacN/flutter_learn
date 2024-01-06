import 'package:flutter/material.dart';
import 'package:flutter_learn/cache/shared_cache_manager.dart';

class SharedCacheLearn extends StatefulWidget {
  const SharedCacheLearn({super.key});

  @override
  State<SharedCacheLearn> createState() => _SharedCacheLearnState();
}

class _SharedCacheLearnState extends LoadingStateful<SharedCacheLearn> {
  int _currentValue = 0;
  late final SharedCacheManager _cacheManager;

  @override
  void initState() {
    super.initState();
    _cacheManager = SharedCacheManager();
    _cacheManager.init();
    _initilazed();
  }

  Future<void> _initilazed() async {
    changeLoading();
    await _cacheManager.init();
    changeLoading();
    _getSavedValue();
  }

  void _getSavedValue() {
    _handleChange(_cacheManager.getFromCache(SharedKey.counter).toString());
  }

  void _handleChange(String value) {
    final inputValue = int.tryParse(value);
    if (inputValue != null) {
      setState(() {
        _currentValue = inputValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(mainAxisSize: MainAxisSize.min, children: [
        _saveCurrentValue(),
        _removeCurrentValue(),
      ]),
      appBar: AppBar(
        actions: [isLoading ? const CircularProgressIndicator() : const SizedBox.shrink()],
        title: Text(_currentValue.toString()),
      ),
      body: TextField(
        onChanged: (value) {
          _handleChange(value);
        },
      ),
    );
  }

  FloatingActionButton _removeCurrentValue() {
    return FloatingActionButton(
      onPressed: () async {
        changeLoading();
        await _cacheManager.removeToCache(SharedKey.counter);
        changeLoading();
      },
      child: const Icon(Icons.delete),
    );
  }

  FloatingActionButton _saveCurrentValue() {
    return FloatingActionButton(
      onPressed: () async {
        changeLoading();
        await _cacheManager.saveToCache(SharedKey.counter, _currentValue);
        changeLoading();
      },
      child: const Icon(Icons.save),
    );
  }
}

abstract class LoadingStateful<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;

  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}

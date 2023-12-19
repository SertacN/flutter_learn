import 'package:flutter/material.dart';
import 'package:flutter_learn/product/language/language_item.dart';

class HelloButtonCounter extends StatefulWidget {
  const HelloButtonCounter({super.key});

  @override
  State<HelloButtonCounter> createState() => _HelloButtonCounterState();
}

class _HelloButtonCounterState extends State<HelloButtonCounter> {
  int _countHello = 0;
  final String _helloText = LanguageItems.hello;

  void _incrementHelloCount() {
    setState(() {
      _countHello++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: _incrementHelloCount, child: Text('$_helloText $_countHello'));
  }
}

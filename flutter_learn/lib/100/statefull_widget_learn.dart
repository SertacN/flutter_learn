import 'package:flutter/material.dart';
import 'package:flutter_learn/product/hello_button_counter.dart';
import 'package:flutter_learn/product/language/language_item.dart';

class StatefullWidgetLearn extends StatefulWidget {
  const StatefullWidgetLearn({super.key});

  @override
  State<StatefullWidgetLearn> createState() => _StatefullWidgetLearnState();
}

class _StatefullWidgetLearnState extends State<StatefullWidgetLearn> {
  // variable
  int _count = 0;
  final String _solAlt = 'Sol alttayım';

  // states
  void _updateCount(bool isIncrement) {
    switch (isIncrement) {
      case true:
        _count++;
        break;
      case false:
        _count--;
      default:
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              _solAlt,
            ),
          ),
          Row(
            children: [
              Container(margin: const EdgeInsets.only(right: 10), child: _incrementButton()),
              _decrementButton(),
            ],
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text(LanguageItems.hello),
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            _count.toString(),
            style: Theme.of(context).textTheme.headlineLarge,
          )),
          const Placeholder(),
          const HelloButtonCounter()
        ],
      ),
    );
  }

  FloatingActionButton _decrementButton() {
    return FloatingActionButton(
      onPressed: () {
        _updateCount(false);
      },
      child: const Icon(Icons.exposure_minus_1),
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(
        onPressed: () {
          _updateCount(true);
        },
        child: const Icon(Icons.plus_one));
  }
}

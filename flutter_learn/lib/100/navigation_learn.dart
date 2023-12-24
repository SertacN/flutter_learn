import 'package:flutter/material.dart';
import 'package:flutter_learn/100/navigation_learn_details.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> with NavigationManager {
  List<int> itemIndex = [];

  void addItem(int index, bool isAdd) {
    setState(() {
      isAdd ? itemIndex.add(index) : itemIndex.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return TextButton(
              onPressed: () async {
                final response = await navigateToWidgetReturnValue<bool>(
                    context,
                    NavigationLearnDetails(
                      isOkey: itemIndex.contains(index),
                    ));
                if (response is bool) {
                  addItem(index, response);
                }
              },
              child: Placeholder(
                color: itemIndex.contains(index) ? Colors.green : Colors.red,
              ));
        },
      ),
    );
  }
}

mixin NavigationManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: const RouteSettings()));
  }

  Future<T?> navigateToWidgetReturnValue<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: const RouteSettings()));
  }
}

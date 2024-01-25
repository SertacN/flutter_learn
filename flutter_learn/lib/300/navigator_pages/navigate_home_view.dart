import 'package:flutter/material.dart';
import 'package:flutter_learn/product/mixin/navigate_mixin.dart';
import 'package:flutter_learn/product/navigator/navigate_routes.dart';
// import 'package:flutter_learn/product/navigator/navigator_manager.dart';

class NavigateHome extends StatefulWidget {
  const NavigateHome({super.key});

  @override
  State<NavigateHome> createState() => _NavigateHomeState();
}

class _NavigateHomeState extends State<NavigateHome> with NavigateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await router.pushToPage(NavigateItems.details, arguments: 'Sertaç');
          // await NavigatorManager.instance.pushToPage(NavigateItems.details, arguments: 'Sertaç');
          // Navigator.of(context).pushNamed(NavigateItems.details.routes, arguments: 'Sertaç');
        },
      ),
      appBar: AppBar(title: const Text('Home')),
    );
  }
}

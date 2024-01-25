import 'package:flutter/material.dart';
import 'package:flutter_learn/product/navigator/navigate_routes.dart';

class NavigatorManager {
  NavigatorManager._();

  static NavigatorManager instance = NavigatorManager._();
  final GlobalKey<NavigatorState> _navigatorGlobalKey = GlobalKey();

  GlobalKey<NavigatorState> get navigatorGlobalKey => _navigatorGlobalKey;

  Future<void> pushToPage(NavigateItems routes, {Object? arguments}) async {
    await _navigatorGlobalKey.currentState?.pushNamed(routes.routes, arguments: arguments);
  }
}

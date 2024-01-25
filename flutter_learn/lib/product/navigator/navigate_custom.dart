import 'package:flutter/material.dart';
import 'package:flutter_learn/300/lottie_learn.dart';
import 'package:flutter_learn/300/navigator_pages/navigate_details.view.dart';
import 'package:flutter_learn/300/navigator_pages/navigate_home_view.dart';
import 'package:flutter_learn/product/navigator/navigate_routes.dart';

mixin NavigateCustom on Widget {
  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    // onUnknowPage Handle
    if (routeSettings.name?.isEmpty ?? true) return _navigateNormal(const LottieLearn());
    // Home Page
    if (routeSettings.name == NavigateRoutes.slash) {
      return _navigateNormal(const NavigateHome());
    }

    final routes = NavigateItems.values.byName(routeSettings.name!.replaceFirst('/', ''));

    switch (routes) {
      case NavigateItems.details:
        final title = routeSettings.arguments;
        return _navigateNormal(NavigateDetails(title: title is String ? title : null), fullscreenDialog: true);
    }
  }

  Route<dynamic>? _navigateNormal(Widget child, {bool? fullscreenDialog}) {
    return MaterialPageRoute(
      fullscreenDialog: fullscreenDialog ?? false,
      builder: (context) {
        return child;
      },
    );
  }
}

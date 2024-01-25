import 'package:flutter_learn/300/navigator_pages/navigate_details.view.dart';
import 'package:flutter_learn/300/navigator_pages/navigate_home_view.dart';

class NavigateRoutes {
  static const String slash = '/';
  final routes = {
    slash: (context) => const NavigateHome(),
    NavigateItems.details.routes: (context) => const NavigateDetails(),
  };
}

enum NavigateItems { details }

extension NavigateItemsExtension on NavigateItems {
  String get routes => '/$name';
}

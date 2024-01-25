import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/300/auto_route/home_view.dart';
import 'package:flutter_learn/300/auto_route/home_view_detail.dart';
import 'package:flutter_learn/300/auto_route/router_home.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: RouterHomeRoute.page, path: '/sayfa', initial: true, children: [
          AutoRoute(page: HomeRoute.page, path: 'home'),
          AutoRoute(page: HomeRouteDetail.page, path: 'detail'),
        ]),
      ];
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    HomeRouteDetail.name: (routeData) {
      final args = routeData.argsAs<HomeRouteDetailArgs>(
          orElse: () => const HomeRouteDetailArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomeViewDetail(
          key: args.key,
          url: args.url,
        ),
      );
    },
    RouterHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RouterHomeView(),
      );
    },
  };
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeViewDetail]
class HomeRouteDetail extends PageRouteInfo<HomeRouteDetailArgs> {
  HomeRouteDetail({
    Key? key,
    String? url,
    List<PageRouteInfo>? children,
  }) : super(
          HomeRouteDetail.name,
          args: HomeRouteDetailArgs(
            key: key,
            url: url,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeRouteDetail';

  static const PageInfo<HomeRouteDetailArgs> page =
      PageInfo<HomeRouteDetailArgs>(name);
}

class HomeRouteDetailArgs {
  const HomeRouteDetailArgs({
    this.key,
    this.url,
  });

  final Key? key;

  final String? url;

  @override
  String toString() {
    return 'HomeRouteDetailArgs{key: $key, url: $url}';
  }
}

/// generated route for
/// [RouterHomeView]
class RouterHomeRoute extends PageRouteInfo<void> {
  const RouterHomeRoute({List<PageRouteInfo>? children})
      : super(
          RouterHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'RouterHomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

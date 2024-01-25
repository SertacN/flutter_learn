import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/300/auto_route/product/navigator/app_router.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final String _image = 'https://picsum.photos/200';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: IconButton(
            onPressed: () {
              AutoRouter.of(context).push(HomeRouteDetail(url: _image));
            },
            icon: Image.network(_image)),
      ),
    );
  }
}

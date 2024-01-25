import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeViewDetail extends StatelessWidget {
  const HomeViewDetail({super.key, this.url});
  final String? url;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(url ?? ''),
      ),
    );
  }
}

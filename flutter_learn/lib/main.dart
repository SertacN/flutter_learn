import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learn/100/statefull_life_circle_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          listTileTheme: const ListTileThemeData(
            contentPadding: EdgeInsets.zero,
          ),
          progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle.light,
          )),
      home: const LifeCircleLearn(message: 'sddc'),
    );
  }
}

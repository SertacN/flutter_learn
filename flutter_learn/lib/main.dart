import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learn/100/list_view_learn.dart';

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
          // INPUT THEME
          inputDecorationTheme: const InputDecorationTheme(
              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
              prefixIconColor: Colors.red,
              labelStyle: TextStyle(color: Colors.red)),
          // LISTTILE THEME
          listTileTheme: const ListTileThemeData(
            contentPadding: EdgeInsets.zero,
          ),
          // PROGRESSINDICATOR THEME
          progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white),
          // APPBAR THEME
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle.light,
          )),
      home: const ListViewLearn(),
    );
  }
}

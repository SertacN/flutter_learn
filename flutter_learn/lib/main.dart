import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_learn/100/custom_widget_learn.dart';
import 'package:flutter_learn/100/indicator_learn.dart';
// import 'package:flutter_learn/100/card_learn.dart';
// import 'package:flutter_learn/100/image_learn.dart';
// import 'package:flutter_learn/demos/note_demos_app.dart';
// import 'package:flutter_learn/100/padding_learn.dart';
// import 'package:flutter_learn/100/colors_learn.dart';
// import 'package:flutter_learn/100/stateless_widget_learn.dart';
// import 'package:flutter_learn/100/appbar_learn.dart';
// import 'package:flutter_learn/100/icon_learn.dart';
// import 'package:flutter_learn/100/button_learn.dart';
// import 'package:flutter_learn/100/container_sized_box_learn.dart';
// import 'package:flutter_learn/100/scaffold_learn.dart';
// import 'package:flutter_learn/100/text_learn_view.dart';

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
          progressIndicatorTheme:
              const ProgressIndicatorThemeData(color: Colors.white),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle.light,
          )),
      home: const IndicatorLearn(),
    );
  }
}

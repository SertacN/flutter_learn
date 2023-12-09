import 'package:flutter/material.dart';
// import 'package:flutter_learn/100/container_sized_box_learn.dart';
import 'package:flutter_learn/100/scaffold_learn.dart';
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
      theme: ThemeData.dark(),
      home: const ScaffoldLearn(),
    );
  }
}

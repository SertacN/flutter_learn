import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(width: 200, height: 100, child: Text('a' * 500)),
          // const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('b' * 10),
          ),
          Container(
            // width: 50,
            // height: 50,
            constraints: const BoxConstraints(maxWidth: 150, minWidth: 100),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(left: 40),
            decoration: ProjectDecoration.projectDecoration,
            child: Text('a' * 25, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 100, minWidth: 50, maxHeight: 70, minHeight: 25),
            decoration: ProjectSuperDecoration(),
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.all(10),
            child: Text('b' * 25),
          )
        ],
      ),
    );
  }
}

// OOP Kullanımları
class ProjectDecoration {
  static BoxDecoration get projectDecoration => BoxDecoration(
      gradient: const LinearGradient(colors: [Colors.purple, Colors.orange]),
      border: Border.all(width: 5, color: Colors.cyan),
      borderRadius: BorderRadius.circular(10),
      boxShadow: const [BoxShadow(offset: Offset(0.1, 2), color: Colors.pink, blurRadius: 15)]);
}

class ProjectSuperDecoration extends BoxDecoration {
  ProjectSuperDecoration()
      : super(
            gradient: const LinearGradient(colors: [Colors.purple, Colors.orange]),
            border: Border.all(width: 5, color: Colors.cyan),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [BoxShadow(offset: Offset(0.1, 2), color: Colors.pink, blurRadius: 15)]);
}

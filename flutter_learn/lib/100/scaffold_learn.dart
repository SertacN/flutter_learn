import 'package:flutter/material.dart';
import 'package:flutter_learn/100/container_sized_box_learn.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Scaffold Learn',
              style: TextStyle(color: Colors.black)),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
            alignment: Alignment.center, child: const Text('Merhaba')),
        drawer: const Drawer(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton:
            FloatingActionButton(onPressed: () {}, child: const Text('Press')),
        bottomNavigationBar: Container(
          decoration: ProjectSuperDecoration(),
          child: BottomNavigationBar(
            backgroundColor: Colors.blueGrey,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.abc_outlined), label: 'a'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.abc_outlined), label: 'b')
            ],
          ),
        ));
  }
}

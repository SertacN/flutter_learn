import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.red,
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  color: Colors.green,
                  height: 100,
                ),
              ),
              Positioned(
                width: 50,
                top: 50,
                child: Container(
                  color: Colors.blue,
                  height: 100,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.black,
                  ),
                ),
                Expanded(
                    child: Container(
                  color: Colors.lime,
                )),
              ],
            )),
        Expanded(
            child: Container(
          color: Colors.green,
        )),
        const Spacer(),
        Expanded(
            child: Container(
          color: Colors.purple,
        )),
        const Expanded(
          flex: 1,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Text('data'), Text('data'), Text('data')],
          ),
        ),
      ]),
    );
  }
}

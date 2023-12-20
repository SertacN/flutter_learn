import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(padding: EdgeInsets.zero, children: [
        Text('Merhaba', style: Theme.of(context).textTheme.displayLarge),
        Container(color: Colors.red, height: 300),
        const Divider(),
        SizedBox(
          height: 300,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(color: Colors.green, width: 200),
              Container(color: Colors.white, width: 200),
              Container(color: Colors.green, width: 200),
              Container(color: Colors.white, width: 200),
            ],
          ),
        ),
        const Divider(),
        Container(color: Colors.red, height: 300),
        IconButton(onPressed: () {}, icon: const Icon(Icons.clear)),
      ]),
    );
  }
}

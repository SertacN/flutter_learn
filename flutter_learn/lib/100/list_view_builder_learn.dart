import 'package:flutter/material.dart';

class ListViewBuilderLearn extends StatefulWidget {
  const ListViewBuilderLearn({super.key});

  @override
  State<ListViewBuilderLearn> createState() => _ListViewBuilderLearnState();
}

class _ListViewBuilderLearnState extends State<ListViewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.network('https://picsum.photos/200'),
                  const Card(
                    child: ListTile(
                      leading: Icon(Icons.kayaking),
                      title: Text('Sertaç'),
                      subtitle: Text('Old School Rune Scape'),
                      trailing: Icon(Icons.clear),
                    ),
                  )
                ],
              );
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: 5));
  }
}

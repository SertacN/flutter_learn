import 'package:flutter/material.dart';
import 'package:flutter_learn/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                leading: const Icon(Icons.list_alt_outlined),
                iconColor: Colors.amber,
                title: const RandomImage(),
                minVerticalPadding: 16,
                textColor: Colors.red,
                subtitle: const Text('List tile denemesi'),
                trailing: const SizedBox(height: 80, child: Icon(Icons.chevron_right_outlined)),
                onTap: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}

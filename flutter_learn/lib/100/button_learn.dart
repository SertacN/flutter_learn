import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});
  final String _buttonText = 'Place Bid';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button Learn'), centerTitle: true),
      body: Column(
        children: [
          TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black)),
              onPressed: () {},
              child: Text(
                'TextButton',
                style: Theme.of(context).textTheme.headlineMedium,
              )),
          ElevatedButton(onPressed: () {}, child: const Text('Elevetad')),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  minimumSize: const Size(200, 20),
                  shape: const LinearBorder(),
                  backgroundColor: Colors.redAccent,
                  padding: const EdgeInsets.all(10)),
              onPressed: () {},
              child: const Text('Outlined')),
          InkWell(
            onTap: () {},
            child: const Text('InkWell'),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.ac_unit)),
          OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm),
              label: const Text('İkonlu')),
          Container(
            height: 100,
            color: Colors.black,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  backgroundColor: Colors.black),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                child: Text(
                  _buttonText,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ))
        ],
      ),
    );
  }
}

// TextButton
// ElevetedButton
// FloatingActionButton
// OutlinedButton
// InkWell
// IconButton

// ButtonStyle tamamen custom button style oluşturmak için
// onun haricinde TextButton.styleFrom() Textbuttununun özelliklerine göre
// ÖRNEK
//  style: ButtonStyle(
//                   backgroundColor:
//                       MaterialStateProperty.all<Color>(Colors.black))
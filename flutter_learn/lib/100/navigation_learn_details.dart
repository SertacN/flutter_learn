import 'package:flutter/material.dart';

class NavigationLearnDetails extends StatefulWidget {
  const NavigationLearnDetails({super.key, this.isOkey = false});
  final bool isOkey;

  @override
  State<NavigationLearnDetails> createState() => _NavigationLearnDetailsState();
}

class _NavigationLearnDetailsState extends State<NavigationLearnDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(backgroundColor: widget.isOkey ? Colors.red : Colors.green[900]),
              onPressed: () {
                Navigator.of(context).pop(!widget.isOkey);
              },
              icon: const Icon(Icons.check),
              label: widget.isOkey ? const Text('İptal') : const Text('Onayla'))),
    );
  }
}

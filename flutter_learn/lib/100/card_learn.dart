import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});
  final String userName = 'Sertaç';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        _CustomCard(child: SizedBox(width: 300, height: 100, child: Center(child: Text(userName)))),
        _CustomCard(child: SizedBox(width: 300, height: 100, child: Center(child: Text(userName)))),
        _CustomCard(child: SizedBox(width: 300, height: 100, child: Center(child: Text(userName))))
      ]),
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({required this.child});
  final Widget child;
  static const roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)));
  static const cardMargin = EdgeInsets.all(10);
  final Color cardColor = Colors.indigo;

  @override
  Widget build(BuildContext context) {
    return Card(shape: roundedRectangleBorder, margin: cardMargin, color: cardColor, child: child);
  }
}

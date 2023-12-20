// colorChangeScreen burada gösterilecek ve ekranın yarısını kaplayacak.
// sağ üstte bir 'x' ikonu olacak
// 'x' ikonuna tıklandığında arka plan rengi mor olacak.
import 'package:flutter/material.dart';
import 'package:flutter_learn/demos/color_change_screen.dart';

class ColorLifecycle extends StatefulWidget {
  const ColorLifecycle({super.key});

  @override
  State<ColorLifecycle> createState() => _ColorLifecycleState();
}

class _ColorLifecycleState extends State<ColorLifecycle> {
  //variable
  Color? _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  _backgroundColor = Colors.purple;
                });
              },
              icon: const Icon(
                Icons.star_purple500_outlined,
                color: Colors.purple,
              ))
        ]),
        body: Column(
          children: [
            const Spacer(),
            Expanded(
                child: ColorChangeScreen(
              initialColor: _backgroundColor,
            ))
          ],
        ));
  }
}

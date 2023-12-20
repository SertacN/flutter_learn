// 3 farklı button olacak. red,blue,green.
// hangi butona tıklanırsa onun rengi arka plan olacak.
import 'package:flutter/material.dart';

class ColorChangeScreen extends StatefulWidget {
  const ColorChangeScreen({super.key, this.initialColor});
  final Color? initialColor;

  @override
  State<ColorChangeScreen> createState() => _ColorChangeScreenState();
}

class _ColorChangeScreenState extends State<ColorChangeScreen> {
  //variable
  Color? _backgroundColor;

  //states
  @override
  void didUpdateWidget(covariant ColorChangeScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialColor != _backgroundColor && widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor!);
    }
  }

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  // app
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(onTap: _setBackgroundColor, items: const [
        BottomNavigationBarItem(icon: _NavbarColoredContainerItem(color: ContainerColor.redColor), label: 'Red'),
        BottomNavigationBarItem(icon: _NavbarColoredContainerItem(color: ContainerColor.blueColor), label: 'Blue'),
        BottomNavigationBarItem(icon: _NavbarColoredContainerItem(color: ContainerColor.greenColor), label: 'Green')
      ]),
    );
  }

// methods
  void _setBackgroundColor(value) {
    setState(() {
      if (value == _MyColors.red.index) {
        changeBackgroundColor(Colors.red);
      } else if (value == _MyColors.blue.index) {
        changeBackgroundColor(Colors.blue);
      } else if (value == _MyColors.green.index) {
        changeBackgroundColor(Colors.green);
      }
    });
  }
}

class _NavbarColoredContainerItem extends StatelessWidget {
  const _NavbarColoredContainerItem({required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ContainerSize.width,
      height: ContainerSize.height,
      color: color,
    );
  }
}

class ContainerSize {
  static const width = 20.0;
  static const height = 20.0;
}

class ContainerColor {
  static const redColor = Colors.red;
  static const blueColor = Colors.blue;
  static const greenColor = Colors.green;
}

enum _MyColors { red, blue, green }

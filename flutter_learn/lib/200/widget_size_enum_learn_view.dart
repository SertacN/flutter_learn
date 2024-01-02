import 'package:flutter/material.dart';

class WidgetSizeEnumLearnView extends StatefulWidget {
  const WidgetSizeEnumLearnView({super.key});

  @override
  State<WidgetSizeEnumLearnView> createState() => _WidgetSizeEnumLearnViewState();
}

class _WidgetSizeEnumLearnViewState extends State<WidgetSizeEnumLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        child: SizedBox(
          height: WidgetSize.normalCardHeight.value(),
        ),
      ),
    );
  }
}

enum WidgetSize { normalCardHeight, circleCardWidth }

extension WidgetSizeExtension on WidgetSize {
  double value() {
    switch (this) {
      case WidgetSize.normalCardHeight:
        return 30;
      case WidgetSize.circleCardWidth:
        return 40;
    }
  }
}

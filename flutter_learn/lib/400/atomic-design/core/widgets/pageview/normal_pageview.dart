import 'package:flutter/material.dart';

class NormalPageView extends StatelessWidget {
  const NormalPageView({
    super.key,
    required this.itemCount,
    required this.onChange,
    required this.onItemBuilder,
  });

  final int itemCount;
  final void Function(int value) onChange;
  final Widget? Function(BuildContext context, int index) onItemBuilder;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: (value) => onChange(value),
      itemCount: itemCount,
      itemBuilder: onItemBuilder,
    );
  }
}

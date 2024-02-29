import 'package:flutter/material.dart';
import '../../../../core/extension/context_extension.dart';

class IndicatorListView extends StatelessWidget {
  const IndicatorListView({
    super.key,
    required this.itemCount,
    required this.pageIndex,
    this.onListItem,
  });

  final int itemCount;
  final int pageIndex;
  final Widget Function(int index)? onListItem;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: itemCount,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => buildPadding(context, index),
    );
  }

  Padding buildPadding(BuildContext context, int index) {
    return Padding(
      padding: context.paddingLow,
      child: buildCircleAvatar(index),
    );
  }

  CircleAvatar buildCircleAvatar(int index) {
    return CircleAvatar(
      radius: pageIndex == index ? 10 : 5,
      child: onListItem != null ? onListItem!(index) : const SizedBox.shrink(),
    );
  }
}

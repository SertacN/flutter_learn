import 'package:flutter/material.dart';
import 'package:flutter_learn/400/atomic-design/core/widgets/listview/indicator_listview.dart';

class OnBoardIndicator extends StatelessWidget {
  const OnBoardIndicator({super.key, required this.itemCount, required this.pageIndex});
  final int itemCount;
  final int pageIndex;
  @override
  Widget build(BuildContext context) {
    return IndicatorListView(
      itemCount: itemCount,
      pageIndex: pageIndex,
      onListItem: (index) {
        return Text(index.toString());
      },
    );
  }
}

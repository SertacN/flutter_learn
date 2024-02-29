import 'package:flutter/material.dart';
import 'package:flutter_learn/400/atomic-design/authenticate/onboard/model/on_board_model.dart';

import 'package:flutter_learn/400/atomic-design/core/widgets/pageview/normal_pageview.dart';
import 'package:flutter_learn/400/core/extension/context_extension.dart';
import 'package:flutter_learn/400/core/widgets/column/form_column.dart';

class OnBoardPageView extends StatelessWidget {
  const OnBoardPageView({
    super.key,
    required this.itemCount,
    required this.onChange,
    this.onBoardModel,
  });

  final int itemCount;
  final void Function(int value) onChange;
  final List<OnBoardModel>? onBoardModel;

  @override
  Widget build(BuildContext context) {
    return NormalPageView(
      itemCount: itemCount,
      onChange: (value) => onChange(value),
      onItemBuilder: (context, index) {
        return buildContainer(context, index);
      },
    );
  }

  Container buildContainer(BuildContext context, int index) {
    return Container(
      color: context.randomColor,
      child: buildContent(index),
    );
  }

  FormColumn buildContent(int index) {
    return FormColumn(children: [
      const Placeholder(),
      Text(onBoardModel?[index].text ?? ''),
    ]);
  }
}

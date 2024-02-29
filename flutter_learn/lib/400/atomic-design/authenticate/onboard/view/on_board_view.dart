import 'package:flutter/material.dart';
import 'package:flutter_learn/400/atomic-design/authenticate/onboard/view-model/on_board_view_model.dart';
import 'package:flutter_learn/400/atomic-design/product/widgets/listview/on_board_indicator.dart';
import 'package:flutter_learn/400/atomic-design/product/widgets/pageview/on_board_pageview.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class OnBoardView extends StatefulWidget {
  const OnBoardView({super.key});
  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends State<OnBoardView> {
  @override
  void initState() {
    super.initState();
    _onBoardViewModel.init();
  }

  final OnBoardViewModel _onBoardViewModel = OnBoardViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 9, child: buildOnBoardPageView()),
          Expanded(child: buildOnBoardIndicator()),
        ],
      ),
    );
  }

  OnBoardPageView buildOnBoardPageView() {
    return OnBoardPageView(
      itemCount: _onBoardViewModel.onBoardModel.length,
      onChange: (value) => _onBoardViewModel.onPageChange(value),
      onBoardModel: _onBoardViewModel.onBoardModel,
    );
  }

  Observer buildOnBoardIndicator() {
    return Observer(
      builder: (_) => OnBoardIndicator(
        itemCount: _onBoardViewModel.onBoardModel.length,
        pageIndex: _onBoardViewModel.currentPageIndex,
      ),
    );
  }
}

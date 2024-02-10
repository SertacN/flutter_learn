import 'package:flutter/material.dart';
import 'package:flutter_learn/400/atomic-design/authenticate/onboard/view-model/on_board_view_model.dart';
import 'package:flutter_learn/400/core/extension/context_extension.dart';
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
          Expanded(
            flex: 9,
            child: PageView.builder(
              onPageChanged: (value) => _onBoardViewModel.onPageChange(value),
              itemCount: _onBoardViewModel.onBoardModel.length,
              itemBuilder: (context, index) => Container(
                color: context.randomColor,
                child: Column(children: [
                  const Placeholder(),
                  Text(_onBoardViewModel.onBoardModel[index].text),
                ]),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: _onBoardViewModel.onBoardModel.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: context.paddingLow,
                child: Observer(
                  builder: (BuildContext context) {
                    return CircleAvatar(
                      radius: _onBoardViewModel.currentPageIndex == index ? 10 : 5,
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

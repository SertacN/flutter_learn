import 'package:flutter/material.dart';
import 'package:flutter_learn/100/icon_learn.dart';
import 'package:flutter_learn/demos/note_demos_app.dart';
import 'package:flutter_learn/demos/stack_demos.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  // variable
  final _pageController = PageController(viewportFraction: 0.9);
  int _pageCurrentIndex = 0;

  // states
  void _findPageIndex(int index) {
    setState(() {
      _pageCurrentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: _PageIndexTracker(pageCurrentIndex: _pageCurrentIndex),
          ),
          const Spacer(),
          _leftPageButton(),
          _rightPageButton(),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        controller: _pageController,
        onPageChanged: _findPageIndex,
        children: [NoteDemosApp(), const StackDemo(), IconLearn()],
      ),
    );
  }

  FloatingActionButton _rightPageButton() {
    return FloatingActionButton(
      onPressed: () {
        _pageController.nextPage(duration: _PageDuration._pageLowDuration, curve: _PageCurves._pageCurves);
      },
      child: const Icon(Icons.chevron_right),
    );
  }

  FloatingActionButton _leftPageButton() {
    return FloatingActionButton(
      onPressed: () {
        _pageController.previousPage(duration: _PageDuration._pageLowDuration, curve: _PageCurves._pageCurves);
      },
      child: const Icon(Icons.chevron_left),
    );
  }
}

class _PageIndexTracker extends StatelessWidget {
  const _PageIndexTracker({
    required int pageCurrentIndex,
  }) : _pageCurrentIndex = pageCurrentIndex;

  final int _pageCurrentIndex;

  @override
  Widget build(BuildContext context) {
    return Text(
      _pageCurrentIndex.toString(),
      style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.green),
    );
  }
}

class _PageDuration {
  static const _pageLowDuration = Duration(seconds: 1);
}

class _PageCurves {
  static const _pageCurves = Curves.easeInOut;
}

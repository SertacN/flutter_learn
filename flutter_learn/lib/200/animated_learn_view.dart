import 'package:flutter/material.dart';

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({super.key});

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView> with TickerProviderStateMixin {
  // AnimatedCrossFade
  //  AnimatedOpacity
  //  AnimatedDefaultTextStyle
  //  AnimatedIcon
  //  AnimatedContainer
  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: _DurationItems.lowDuration);
  }

  bool _isVisible = false;
  bool _isOpacity = false;
  late AnimationController controller;

  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _changeOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _placeHolderAnimated(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _changeVisible();
          controller.animateTo(_isVisible ? 0 : 1);
        },
      ),
      body: Column(
        children: [
          ListTile(
            title: AnimatedOpacity(
              duration: _DurationItems.lowDuration,
              opacity: _isOpacity ? 1 : 0.1,
              child: const Text('data'),
            ),
            trailing: IconButton(
                onPressed: () {
                  _changeOpacity();
                },
                icon: const Icon(Icons.opacity_outlined)),
          ),
          AnimatedDefaultTextStyle(
              style: (_isVisible ? context.textTheme().headlineLarge : context.textTheme().displayLarge) ??
                  const TextStyle(),
              duration: _DurationItems.lowDuration,
              child: const Text('data')),
          AnimatedIcon(icon: AnimatedIcons.menu_close, progress: controller),
          AnimatedContainer(
            duration: _DurationItems.lowDuration,
            width: MediaQuery.of(context).size.width * 0.2,
            height: _isVisible ? 0 : MediaQuery.of(context).size.height * 0.2,
            color: Colors.red,
          )
        ],
      ),
    );
  }

  AnimatedCrossFade _placeHolderAnimated() {
    return AnimatedCrossFade(
      firstChild: const Placeholder(),
      secondChild: const SizedBox.shrink(),
      duration: _DurationItems.lowDuration,
      crossFadeState: _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
  //Text('data', style: context.textTheme().displayLarge),
}

class _DurationItems {
  static const lowDuration = Duration(seconds: 1);
}

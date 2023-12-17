import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final String title = 'Food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: _PaddingUtility().horizontalPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: _CustomRedButton(
                  title: title,
                  padding: _PaddingUtility().normal2xPadding,
                  onPressed: () {},
                )),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                _CustomRedButton(
                  title: title,
                  padding: _PaddingUtility().normalPadding,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 10,
                ),
                _CustomRedButton(
                  title: title,
                  padding: _PaddingUtility().normalPadding,
                  onPressed: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomRedButton extends StatelessWidget
    with _ColorUtility, _PaddingUtility {
  _CustomRedButton({
    required this.title,
    required this.padding,
    required this.onPressed,
  });

  final String title;
  final EdgeInsetsGeometry padding;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: colorRed),
        onPressed: onPressed,
        child: Padding(
          padding: padding,
          child: Text(title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: colorWhite,
                  )),
        ));
  }
}

mixin class _ColorUtility {
  final Color colorRed = Colors.red;
  final Color colorWhite = Colors.white;
}

mixin class _PaddingUtility {
  final EdgeInsets horizontalPadding =
      const EdgeInsets.symmetric(horizontal: 16);
  final EdgeInsets normalPadding = const EdgeInsets.all(8);
  final EdgeInsets normal2xPadding = const EdgeInsets.all(16);
}

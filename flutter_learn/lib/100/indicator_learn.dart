import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          CustomCircularProgressIndicator(),
        ],
      ),
      // body: const Center(child: LinearProgressIndicator()),
    );
  }
}

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({
    super.key,
  });
  final Color redColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        value: 0.7,
        backgroundColor: redColor,
        strokeWidth: 9,
      ),
    );
  }
}

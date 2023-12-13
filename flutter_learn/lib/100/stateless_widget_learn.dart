import 'package:flutter/material.dart';

class StatelessWidgetLearn extends StatelessWidget {
  const StatelessWidgetLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(children: [
        TitleTextWidget(title: 'Sertac'),
        TitleTextWidget(title: 'Sertac2'),
        TitleTextWidget(title: 'Sertac3'),
        ContainerWidget()
      ]),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.amber),
    );
  }
}

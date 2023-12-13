import 'package:flutter/material.dart';

class StatelessWidgetLearn extends StatelessWidget {
  const StatelessWidgetLearn({super.key});

  @override
  Widget build(BuildContext context) {
    var title2 = 'Sertac';
    var title3 = 'Sertac2';
    var title4 = 'Sertac3';

    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        _TitleTextWidget(title: title2),
        emptyBox(),
        _TitleTextWidget(title: title3),
        emptyBox(),
        _TitleTextWidget(title: title4),
        const ContainerWidget()
      ]),
    );
  }

  SizedBox emptyBox() {
    return const SizedBox(
      height: 10,
    );
  }
}

// _ anlamı sadece o dosyada kullanılabilir.
class _TitleTextWidget extends StatelessWidget {
  const _TitleTextWidget({
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

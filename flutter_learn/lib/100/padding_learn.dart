import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.horizontalPadding,
        child: Column(
          children: [
            Container(
              height: 100,
              color: Colors.brown,
            ),
            Padding(
              padding: ProjectPadding.verticalPadding,
              child: Container(
                height: 100,
                color: Colors.brown,
              ),
            ),
            const Padding(
              padding: ProjectPadding.onlyRightPadding,
              child: Text('data'),
            )
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
  static const verticalPadding = EdgeInsets.symmetric(vertical: 10);
  static const onlyRightPadding = EdgeInsets.only(right: 30);
}

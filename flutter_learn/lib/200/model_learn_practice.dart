// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_learn/200/model_learn.dart';

class ModelLearnPractice extends StatefulWidget {
  const ModelLearnPractice({super.key});

  @override
  State<ModelLearnPractice> createState() => _ModelLearnPracticeState();
}

class _ModelLearnPracticeState extends State<ModelLearnPractice> {
  PostModelApi user9 = PostModelApi(body: 'ss');
  final usss = PostModelLocal(userId: 1, id: 1, title: 'title', body: 'body');

  @override
  void initState() {
    super.initState();

    final user1 = PostModel1();
    user1.body = '';

    final user2 = PostModel2(1, 2, 'title', 'body');
    user2.body = '';

    final user3 = PostModel3(1, 2, 'title', 'body');
    // user3.body = '';

    final user4 = PostModel4(userId: 1, id: 2, title: 'title', body: 'body');
    // user4.body = '';

    final user5 = PostModel5(userId: 1, id: 2, title: 'title', body: 'body');
    user5.userId;

    final user6 = PostModel6(userId: 1, id: 2, title: 'title', body: 'body');

    final user7 = PostModel7();
    // service
    final user8 = PostModel8(1, 2, 'title', 'body');

    final usss = PostModelLocal(userId: 1, id: 1, title: 'title', body: 'body');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user9 = user9.copyWith(title: 'Sertac');
            user9.updateBody('data');
          });
        },
      ),
      appBar: AppBar(
        title: Text(user9.body ?? 'Not has any data'),
      ),
    );
  }
}

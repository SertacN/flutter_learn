import 'package:flutter/material.dart';

class AppbarLearn extends StatelessWidget {
  const AppbarLearn({super.key});
  final String _title = 'Hello World';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        automaticallyImplyLeading: false, // back butonu otomatik gelmesin
        toolbarTextStyle: const TextStyle(color: Colors.red),
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_left)),
        actionsIconTheme: const IconThemeData(color: Colors.red, size: 50),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
          Text(_title)
          // Projede ortak kullanılabilecek her şey main.dart'ta
          // centerTitle: true,
          // backgroundColor: Colors.transparent,
          // elevation: 0,
          // systemOverlayStyle: SystemUiOverlayStyle.light,
          // const Center(child: CircularProgressIndicator())
        ],
      ),
    );
  }
}

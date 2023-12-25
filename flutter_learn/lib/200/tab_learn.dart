import 'package:flutter/material.dart';
import 'package:flutter_learn/100/icon_learn.dart';
import 'package:flutter_learn/100/image_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _MyTabBarItems.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabBarItems.values.length,
        child: Scaffold(
          appBar: AppBar(),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.contact_page),
              onPressed: () {
                _goingContact();
              }),
          bottomNavigationBar: BottomAppBar(
            child: _myTabBar(),
          ),
          body: myTabBarView(),
        ));
  }

  void _goingContact() {
    _tabController.animateTo(_MyTabBarItems.contact.index);
  }

  TabBar _myTabBar() {
    return TabBar(
      controller: _tabController,
      tabs: _MyTabBarItems.values.map((e) => Tab(text: e.name)).toList(),
    );
  }

  TabBarView myTabBarView() {
    return TabBarView(
      controller: _tabController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const ImageLearn(),
        IconLearn(),
        const ImageLearn(),
        IconLearn(),
      ],
    );
  }
}

enum _MyTabBarItems { home, contact, profile, surface }

extension _MyTabBar on _MyTabBarItems {}

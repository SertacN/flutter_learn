import 'package:flutter/material.dart';
import 'package:flutter_learn/300/mobx/view_model/mobx_learn_view_model.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MobxLearnView extends StatefulWidget {
  const MobxLearnView({super.key});

  @override
  State<MobxLearnView> createState() => _MobxLearnViewState();
}

class _MobxLearnViewState extends State<MobxLearnView> {
  @override
  void initState() {
    super.initState();
    _mobxLearnViewModel.init();
  }

  final _mobxLearnViewModel = MobxLearnViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _mobxLearnViewModel.fetch();
          },
        ),
        appBar: AppBar(
          actions: [
            Observer(
              builder: (context) {
                return _mobxLearnViewModel.isLoading ? const CircularProgressIndicator() : const SizedBox.shrink();
              },
            )
          ],
        ),
        body: _ColorListView(mobxLearnViewModel: _mobxLearnViewModel));
  }
}

class _ColorListView extends StatelessWidget {
  const _ColorListView({required MobxLearnViewModel mobxLearnViewModel}) : _mobxLearnViewModel = mobxLearnViewModel;

  final MobxLearnViewModel _mobxLearnViewModel;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return ListView.builder(
          itemCount: _mobxLearnViewModel.regresItem?.length ?? 0,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(_mobxLearnViewModel.regresItem?[index].name ?? ''),
              subtitle: Text(_mobxLearnViewModel.regresItem?[index].color ?? ''),
            );
          },
        );
      },
    );
  }
}

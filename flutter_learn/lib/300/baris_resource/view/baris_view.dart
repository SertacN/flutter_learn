import 'package:flutter/material.dart';
import 'package:flutter_learn/300/baris_resource/view_model/baris_view_model.dart';

class BarisView extends StatefulWidget {
  const BarisView({super.key});

  @override
  State<BarisView> createState() => _BarisViewState();
}

class _BarisViewState extends BarisViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [isLoading ? const CircularProgressIndicator.adaptive() : const SizedBox.shrink()],
      ),
      body: ListView.builder(
        itemCount: barisItem?.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(barisItem?[index].title ?? ''),
            subtitle: Text(barisItem?[index].price.toString() ?? ''),
            trailing: _navigateToId(context, index),
          );
        },
      ),
    );
  }

  TextButton _navigateToId(BuildContext context, int index) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return BarisId(id: barisItem?[index].sId ?? '');
          },
        ));
      },
      child: const Text('Show Id'),
    );
  }
}

class BarisId extends StatelessWidget {
  const BarisId({super.key, required this.id});
  final String id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(id),
      ),
    );
  }
}

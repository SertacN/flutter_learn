import 'package:flutter/material.dart';
import 'package:flutter_learn/300/reqres_resource/view_model/reqres_view_model.dart';
import 'package:flutter_learn/product/extension/string_extension.dart';

class ReqresView extends StatefulWidget {
  const ReqresView({super.key});

  @override
  State<ReqresView> createState() => _ReqresViewState();
}

class _ReqresViewState extends ReqresViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isLoading ? const CircularProgressIndicator.adaptive() : const SizedBox.shrink(),
      ),
      body: ListView.builder(
        itemCount: resource?.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Color(resource?[index].color.colorValue() ?? 0),
            child: Text(resource?[index].name ?? ''),
          );
        },
      ),
    );
  }
}

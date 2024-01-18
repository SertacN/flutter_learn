import 'package:flutter/material.dart';
import 'package:flutter_learn/300/reqres_resource/model/resource_model.dart';
import 'package:flutter_learn/300/reqres_resource/service/reqres_service.dart';
import 'package:flutter_learn/300/reqres_resource/view_model/reqres_provider.dart';
import 'package:flutter_learn/product/global/theme_notifer.dart';
import 'package:flutter_learn/product/service/project_dio.dart';
import 'package:provider/provider.dart';
import 'package:flutter_learn/product/extension/string_extension.dart';

class ReqresViewProvider extends StatefulWidget {
  const ReqresViewProvider({super.key});

  @override
  State<ReqresViewProvider> createState() => _ReqresViewProviderState();
}

class _ReqresViewProviderState extends State<ReqresViewProvider> with ProjectDioMixin {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ReqresProvider>(
      create: (context) => ReqresProvider(ReqresService(reqresDio)),
      builder: (context, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<ThemeNotifier>().changeTheme();
          },
          child:
              Icon(context.watch<ThemeNotifier>().isLightTheme ? Icons.light_mode_outlined : Icons.dark_mode_outlined),
        ),
        appBar: AppBar(
          title: context.watch<ReqresProvider>().isLoading
              ? const CircularProgressIndicator.adaptive()
              : const SizedBox.shrink(),
        ),
        body: Column(
          children: [
            Selector<ReqresProvider, bool>(
              builder: (context, value, child) => value ? const Placeholder() : const Text('data'),
              selector: (p0, p1) => p1.isLoading,
            ),
            Expanded(child: _resourceListView(context, context.watch<ReqresProvider>().resource)),
          ],
        ),
      ),
    );
  }

  ListView _resourceListView(BuildContext context, List<Data>? items) {
    return ListView.builder(
      itemCount: items?.length ?? 0,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Color(items?[index].color.colorValue() ?? 0),
          child: Text(items?[index].name ?? ''),
        );
      },
    );
  }
}

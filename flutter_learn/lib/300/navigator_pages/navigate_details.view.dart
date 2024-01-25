import 'package:flutter/material.dart';

class NavigateDetails extends StatefulWidget {
  const NavigateDetails({super.key, this.title});
  final String? title;

  @override
  State<NavigateDetails> createState() => _NavigateDetailsState();
}

class _NavigateDetailsState extends State<NavigateDetails> {
  String? _pageTitle;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final modelId = ModalRoute.of(context)?.settings.arguments;
      setState(() {
        modelId is String ? _pageTitle = modelId : _pageTitle = widget.title ?? '';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_pageTitle ?? '')),
    );
  }
}

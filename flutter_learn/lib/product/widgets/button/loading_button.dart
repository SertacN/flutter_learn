import 'package:flutter/material.dart';

class LoadingButton extends StatefulWidget {
  const LoadingButton({super.key, required this.onClicked, required this.title});
  final Future<void> Function() onClicked;
  final String title;
  @override
  State<LoadingButton> createState() => _LoadingButtonState();
}

class _LoadingButtonState extends State<LoadingButton> {
  bool _isLoading = false;

  void changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          if (_isLoading) return;
          changeLoading();
          await widget.onClicked.call();
          changeLoading();
        },
        child: _isLoading ? const CircularProgressIndicator.adaptive() : Text(widget.title));
  }
}

import 'package:flutter/material.dart';

class LifeCircleLearn extends StatefulWidget {
  const LifeCircleLearn({super.key, required this.message});
  final String message;
  // title da gelen mesaj ve tek mi çift mi olduğu yazsın
  // body de gelen mesaj tekse eleveted button içinde, çiftse text button
  //içinde gelen mesaj ve tek mi çift mi olduğu yazsın

  @override
  State<LifeCircleLearn> createState() => _LifeCircleLearnState();
}

class _LifeCircleLearnState extends State<LifeCircleLearn> {
  String _message = '';
  late final bool _isEven;
  // init state sayfa açıldığında 1 kez çalıştırılır
  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isEven = widget.message.length.isEven;
    _computeName();
  }

  void _computeName() {
    _isEven ? _message += ' Çift' : _message += ' Tek';
  }

  //didUpdateWidget yukardan gelen bir değişiklik varsa burası tetiklenir.
  @override
  void didUpdateWidget(covariant LifeCircleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.message != widget.message) {
      _message = widget.message;
      _computeName();
      setState(() {});
    }
  }

  // dispose rota kısmında kullanılır. sayfadan çıkarken değişmesini istediğin şeyleri değiştirirsin.
  @override
  void dispose() {
    super.dispose();
    _message = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: _isEven
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(onPressed: () {}, child: Text(_message)),
    );
  }
}

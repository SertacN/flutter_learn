import 'package:flutter/material.dart';
import 'package:flutter_learn/100/list_view_learn.dart';

// MIXIN KULLANIMI.
class SheetLearn extends StatefulWidget {
  const SheetLearn({super.key});

  @override
  State<SheetLearn> createState() => _SheetLearnState();
}

class _SheetLearnState extends State<SheetLearn> with ProductSheetMixin {
  Color _bodyBackgroundColor = Colors.white30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: TextButton(
        child: const Text('show'),
        onPressed: () {
          showCustomSheet(context, const ListViewLearn());
        },
      )),
      backgroundColor: _bodyBackgroundColor,
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () async {
              final response = await showModalBottomSheet(
                useSafeArea: true,
                context: context,
                builder: (context) {
                  return const _CustomSheet();
                },
              );
              if (response is bool) {
                setState(() {
                  _bodyBackgroundColor = Colors.purple;
                });
              }
            },
            child: const Icon(Icons.arrow_upward_rounded),
          ),
          FloatingActionButton(
            onPressed: () async {
              final response = await showCustomSheet(context, const _CustomSheetBody());
              if (response is bool) {
                setState(() {
                  _bodyBackgroundColor = Colors.purple[900] ?? Colors.purple;
                });
              }
            },
            child: const Text('Generik'),
          )
        ],
      ),
    );
  }
}

class _CustomSheet extends StatefulWidget {
  const _CustomSheet();

  @override
  State<_CustomSheet> createState() => _CustomSheetState();
}

// GENERİK OLMAYAN AMA PARÇALANMIŞ KOD
class _CustomSheetState extends State<_CustomSheet> {
  Color _backgroundColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      decoration:
          BoxDecoration(color: _backgroundColor, borderRadius: const BorderRadius.vertical(top: Radius.circular(20))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const MainSheetHeader(),
          const Text('data'),
          Image.network('https://picsum.photos/200'),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop<bool>(true);
                setState(() {
                  _backgroundColor = Colors.black38;
                });
              },
              child: const Text('OK'))
        ],
      ),
    );
  }
}

class MainSheetHeader extends StatelessWidget {
  const MainSheetHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Divider(
            thickness: 3,
            endIndent: MediaQuery.of(context).size.width * 0.45,
            indent: MediaQuery.of(context).size.width * 0.45,
          ),
          Positioned(
            top: 5,
            right: 10,
            child: InkWell(
              child: const Icon(Icons.close),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          )
        ],
      ),
    );
  }
}

// FULL GENERİK OLAN YER MainSheetHeader(), BURASIDA KULLANIYOR.
class _CustomMainSheet extends StatelessWidget {
  const _CustomMainSheet({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const MainSheetHeader(),
        Expanded(child: child), // Sığması için
      ],
    );
  }
}

mixin ProductSheetMixin {
  Future<T?> showCustomSheet<T>(BuildContext context, Widget child) {
    return showModalBottomSheet<T>(
      useSafeArea: true,
      context: context,
      builder: (context) {
        return _CustomMainSheet(child: child);
      },
    );
  }
}

/////////////////
class _CustomSheetBody extends StatefulWidget {
  const _CustomSheetBody();

  @override
  State<_CustomSheetBody> createState() => __CustomSheetBodyState();
}

class __CustomSheetBodyState extends State<_CustomSheetBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('data'),
        Image.network('https://picsum.photos/200'),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop<bool>(true);
            },
            child: const Text('OK'))
      ],
    );
  }
}

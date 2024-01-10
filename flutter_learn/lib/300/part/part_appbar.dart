part of 'part_of_learn.dart';

class _PartofAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _PartofAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('data'),
      actions: [TextButton(onPressed: () {}, child: const Text('data'))],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

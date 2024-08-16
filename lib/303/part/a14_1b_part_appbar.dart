part of 'a14_1_part_of_learn.dart';

class _PartofAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _PartofAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('a'),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded))
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  void openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  void openSearch() {}

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text('Lumiere', style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.menu, color: Colors.white),
        onPressed: () {
          openDrawer(context);
        },
      ),
      actions: [IconButton(icon: const Icon(Icons.search, color: Colors.white), onPressed: () {})],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

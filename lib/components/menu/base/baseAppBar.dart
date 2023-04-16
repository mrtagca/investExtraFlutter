import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Text title;
  const BaseAppBar({super.key, required this.title});

  /// you can add more fields that meet your needs

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: title,
      backgroundColor: Colors.blue[700],
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Icon(Icons.settings),
        )
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(AppBar().preferredSize.height);
}

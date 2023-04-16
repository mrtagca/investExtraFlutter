import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Text title;
  final List<Widget>? actionWidgets;

  const BaseAppBar({super.key, required this.title, this.actionWidgets});

  /// you can add more fields that meet your needs

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: title,
      backgroundColor: Colors.blue[700],
      actions: actionWidgets,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(AppBar().preferredSize.height);
}

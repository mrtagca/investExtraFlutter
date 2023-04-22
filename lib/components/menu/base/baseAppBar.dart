import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget>? actionWidgets;
  final PreferredSizeWidget? bottom;

  const BaseAppBar(
      {super.key, required this.title, this.actionWidgets, this.bottom});

  /// you can add more fields that meet your needs

  final Text title;
  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      centerTitle: true,
      title: title,
      backgroundColor: Colors.blue[700],
      actions: actionWidgets,
      bottom: bottom,
    );
    return appBar;
  }

  @override
  Size get preferredSize => new Size.fromHeight(AppBar().preferredSize.height);
}

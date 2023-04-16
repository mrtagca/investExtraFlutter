import 'package:flutter/material.dart';
import 'package:investextraqnb/components/menu/base/baseAppBar.dart';
import 'package:investextraqnb/components/menu/menuDrawer.dart';
import 'package:investextraqnb/home.dart';

class AppScaffold extends StatelessWidget {
  late Widget widget;

  AppScaffold({required this.widget, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(title: Text("Invest Extra")),
      drawer: MenuDrawer(),
      body: widget,
    );
  }
}

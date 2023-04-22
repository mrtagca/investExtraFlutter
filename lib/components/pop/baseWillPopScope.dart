import 'package:flutter/material.dart';

class BaseWillPopScope extends StatefulWidget {
  final bool isPopable;
  final Widget child;
  const BaseWillPopScope(
      {super.key, required this.child, required this.isPopable});

  @override
  State<BaseWillPopScope> createState() => _BaseWillPopScopeState();
}

class _BaseWillPopScopeState extends State<BaseWillPopScope> {
  Future<bool> _onWillPop() async {
    return widget.isPopable;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: widget.child,
    );
  }
}

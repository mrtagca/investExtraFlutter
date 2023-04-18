import 'package:flutter/material.dart';

class BasePanel extends StatefulWidget {
  final Color? backgroundColor;
  final BorderRadiusGeometry? panelBorderRadius;
  final double? height;
  final List<Widget> children;

  const BasePanel(
      {super.key,
      this.backgroundColor,
      this.panelBorderRadius,
      this.height,
      required this.children});

  @override
  State<BasePanel> createState() => _BasePanelState();
}

class _BasePanelState extends State<BasePanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Container(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: widget.panelBorderRadius,
                  color: Colors.grey[200],
                ),
                height: widget.height,
                child: Column(children: widget.children),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

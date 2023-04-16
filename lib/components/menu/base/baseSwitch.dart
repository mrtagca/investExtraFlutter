import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BaseSwitch extends StatefulWidget {
  const BaseSwitch({super.key});

  @override
  State<BaseSwitch> createState() => _BaseSwitchState();
}

class _BaseSwitchState extends State<BaseSwitch> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return Switch(
          value: light,
          activeColor: Colors.blue,
          onChanged: (bool value) {
            setState(() {
              light = value;
            });
          });
    } else if (Platform.isIOS) {
      return CupertinoSwitch(
          value: light,
          activeColor: Colors.blue,
          onChanged: (bool value) {
            setState(() {
              light = value;
            });
          });
    } else if (Platform.isMacOS) {
      return CupertinoSwitch(
          value: light,
          activeColor: Colors.blue,
          onChanged: (bool value) {
            setState(() {
              light = value;
            });
          });
    }

    return Switch(
        value: light,
        activeColor: Colors.blue,
        onChanged: (bool value) {
          setState(() {
            light = value;
          });
        });
  }
}

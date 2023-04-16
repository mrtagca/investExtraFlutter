import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:investextraqnb/home.dart';
import 'package:investextraqnb/myPage.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        if (Platform.isAndroid) {
          return MaterialPageRoute(
              builder: (context) => Home(), settings: settings);
        } else if (Platform.isIOS) {
          return CupertinoPageRoute(
              builder: (context) => Home(), settings: settings);
        }
        break;
      case "myPage":
        if (Platform.isAndroid) {
          return MaterialPageRoute(
              builder: (context) => MyPage(), settings: settings);
        } else if (Platform.isIOS) {
          return CupertinoPageRoute(
              builder: (context) => MyPage(), settings: settings);
        }
        break;
      default:
        return MaterialPageRoute(
            builder: (context) => Home(), settings: settings);
    }
  }
}

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:investextraqnb/alarm.dart';
import 'package:investextraqnb/home.dart';
import 'package:investextraqnb/investAdvise.dart';
import 'package:investextraqnb/myPage.dart';
import 'package:investextraqnb/myPageSettings.dart';
import 'package:investextraqnb/symbolDetail.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        if (Platform.isAndroid) {
          return AndroidRoute(Home(), settings: settings);
        } else if (Platform.isIOS) {
          return IosRoute(Home(), settings: settings);
        }
        break;
      case "myPage":
        if (Platform.isAndroid) {
          return AndroidRoute(MyPage(), settings: settings);
        } else if (Platform.isIOS) {
          return IosRoute(MyPage(), settings: settings);
        }
        break;
      case "myPageSettings":
        if (Platform.isAndroid) {
          return AndroidRoute(ReorderableExample(), settings: settings);
        } else if (Platform.isIOS) {
          return IosRoute(ReorderableExample(), settings: settings);
        }
        break;
      case "investAdvise":
        if (Platform.isAndroid) {
          return AndroidRoute(InvestAdvise(), settings: settings);
        } else if (Platform.isIOS) {
          return IosRoute(InvestAdvise(), settings: settings);
        }
        break;
      case "symbolDetail":
        if (Platform.isAndroid) {
          return AndroidRoute(SymbolDetail(), settings: settings);
        } else if (Platform.isIOS) {
          return IosRoute(SymbolDetail(), settings: settings);
        }
        break;
      case "alarmCreate":
        if (Platform.isAndroid) {
          return AndroidRoute(SymbolAlarm(), settings: settings);
        } else if (Platform.isIOS) {
          return IosRoute(SymbolAlarm(), settings: settings);
        }
        break;
      default:
        return MaterialPageRoute(
            builder: (context) => Home(), settings: settings);
    }
  }
}

MaterialPageRoute AndroidRoute(Widget widget, {RouteSettings? settings}) {
  return MaterialPageRoute(builder: (context) => widget, settings: settings);
}

CupertinoPageRoute IosRoute(Widget widget, {RouteSettings? settings}) {
  return CupertinoPageRoute(
      builder: (context) => ReorderableExample(), settings: settings);
}

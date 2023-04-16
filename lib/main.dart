import 'package:flutter/material.dart';
import 'package:investextraqnb/components/menu/menuDrawer.dart';
import 'package:investextraqnb/helpers/routeHelper.dart';
import 'package:investextraqnb/home.dart';

import 'components/menu/base/appScaffold.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
      home: AppScaffold(
        widget: Home(),
      ),
    );
  }
}

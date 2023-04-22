import 'package:flutter/material.dart';
import 'package:investextraqnb/components/investAdvise/investAdviseTab.dart';
import 'package:investextraqnb/components/menu/base/appScaffold.dart';
import 'package:investextraqnb/components/pop/baseWillPopScope.dart';

class InvestAdvise extends StatefulWidget {
  const InvestAdvise({super.key});

  @override
  State<InvestAdvise> createState() => _InvestAdviseState();
}

class _InvestAdviseState extends State<InvestAdvise> {
  @override
  Widget build(BuildContext context) {
    return BaseWillPopScope(isPopable: false, child: InvestAdviseTab());
  }
}

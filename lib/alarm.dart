import 'dart:async';

import 'package:flutter/material.dart';
import 'package:investextraqnb/components/menu/base/baseAppBar.dart';
import 'package:investextraqnb/components/menu/base/basePanel.dart';

class SymbolAlarm extends StatelessWidget {
  const SymbolAlarm({super.key});

  @override
  Widget build(BuildContext context) {
    Alarm alarm = ModalRoute.of(context)!.settings.arguments as Alarm;

    return Scaffold(
      appBar: BaseAppBar(title: Text(alarm.instrument ?? "Boş")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  // color: Colors.grey[200],
                  color: Color.fromRGBO(230, 236, 238, 0.6),
                  borderRadius: BorderRadius.circular(6)),
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white as Color,
                          borderRadius: BorderRadius.circular(3)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            alarm.price.toString(),
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: "RobotoBold", fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle:
                          TextStyle(fontSize: 20, fontFamily: "RobotoBold")),
                  onPressed: () {},
                  child: Text("OLUŞTUR")),
            ),
          )
        ],
      ),
    );
  }
}

class Alarm {
  final String instrument;
  final double price;

  const Alarm(this.instrument, this.price);
}

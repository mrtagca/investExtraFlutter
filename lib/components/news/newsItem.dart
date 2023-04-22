import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "07:16",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 30),
              height: 100,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(color: Colors.white10, blurRadius: 1, spreadRadius: 1)
              ], borderRadius: BorderRadius.circular(5), color: Colors.white),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8, top: 8),
                        child: Text("BUGÜN -",
                            style: TextStyle(
                                fontFamily: "RobotoBold",
                                letterSpacing: 0.5,
                                fontSize: 15,
                                color: Colors.blue[700])),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, top: 8),
                        child: Text("TL Bonolar",
                            style: TextStyle(
                                fontFamily: "RobotoBold",
                                letterSpacing: 0.5,
                                fontSize: 15,
                                color: Colors.cyan[500])),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          "TL verim eğrisi negatif eğimde. Kısa vadeli faizler yüksek seviyelerini korurke, 10 yıllık tahvil faizi geri çekildi.",
                          maxLines: 3,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              letterSpacing: 0.1,
                              height: 1.5,
                              color: Colors.grey[500]),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

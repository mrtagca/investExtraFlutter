import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});

  static Widget generateNewsItem() {
    return Padding(
      padding: const EdgeInsets.only(top: 5, right: 15, left: 15, bottom: 5),
      child: NewsItem(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 2, bottom: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "07:16",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 15),
              height: 60,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(color: Colors.white10, blurRadius: 1, spreadRadius: 1)
              ], borderRadius: BorderRadius.circular(5), color: Colors.white),
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        "TL verim eğrisi negatif eğimde. Kısa vadeli faizler yüksek seviyelerini korurke, 10 yıllık tahvil faizi geri çekildi."
                            .toUpperCase(),
                        maxLines: 5,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            letterSpacing: 0.1,
                            //height: 1.5,
                            color: Colors.grey[500]),
                      ),
                    ),
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

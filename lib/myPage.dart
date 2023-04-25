import 'package:flutter/material.dart';
import 'package:investextraqnb/components/menu/base/appScaffold.dart';
import 'package:investextraqnb/components/menu/base/baseAppBar.dart';
import 'package:investextraqnb/components/menu/menuDrawer.dart';
import 'package:investextraqnb/components/news/investAdivseNews.dart';
import 'package:investextraqnb/components/news/news.dart';
import 'package:investextraqnb/components/pop/baseWillPopScope.dart';
import 'package:investextraqnb/components/prices/followerStockItem.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return BaseWillPopScope(
      isPopable: false,
      child: Scaffold(
        appBar: BaseAppBar(
          title: Text("SAYFAM"),
          actionWidgets: [
            Padding(
              padding: const EdgeInsets.only(right: 0.0),
              child: IconButton(
                  onPressed: () =>
                      {Navigator.of(context).pushNamed("myPageSettings")},
                  icon: Icon(Icons.settings)),
            )
          ],
        ),
        drawer: MenuDrawer(),
        body: Container(
          height: double.infinity,
          color: Colors.blue[800],
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10, top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[200],
                      ),
                      height: 400,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Card(
                              color: Colors.grey[200],
                              child: ListTile(
                                leading: Icon(Icons.analytics),
                                title: Text(
                                  "TAKİP ETTİKLERİM",
                                  style: TextStyle(
                                      fontFamily: "RobotoBold",
                                      letterSpacing: 0.5,
                                      color: Colors.grey[700]),
                                ),
                                trailing: IconButton(
                                    onPressed: () => {
                                          Navigator.of(context)
                                              .pushNamed("symbolDetail")
                                        },
                                    icon: Icon(Icons.add_circle)),
                              ),
                            ),
                            Column(
                              children: [
                                FollowerStockItem(
                                  stockItemTickType: StockItemTickType.Up,
                                  instrumentName: "USDTRY",
                                  instrumentPrice: 18.9134,
                                  instrumentChangeRate: 0.10,
                                  instrumentChangeDate: DateTime(2023),
                                ),
                                FollowerStockItem(
                                  stockItemTickType: StockItemTickType.Down,
                                  instrumentName: "GARAN",
                                  instrumentPrice: 33.11,
                                  instrumentChangeRate: -0.5,
                                  instrumentChangeDate: DateTime(2023),
                                ),
                                FollowerStockItem(
                                  stockItemTickType: StockItemTickType.Notr,
                                  instrumentName: "EREGL",
                                  instrumentPrice: 10.11,
                                  instrumentChangeRate: 0,
                                  instrumentChangeDate: DateTime(2023),
                                ),
                                FollowerStockItem(
                                  stockItemTickType: StockItemTickType.Up,
                                  instrumentName: "USDTRY",
                                  instrumentPrice: 18.9134,
                                  instrumentChangeRate: 0.10,
                                  instrumentChangeDate: DateTime(2023),
                                ),
                                FollowerStockItem(
                                  stockItemTickType: StockItemTickType.Up,
                                  instrumentName: "USDTRY",
                                  instrumentPrice: 18.9134,
                                  instrumentChangeRate: 0.10,
                                  instrumentChangeDate: DateTime(2023),
                                ),
                                FollowerStockItem(
                                  stockItemTickType: StockItemTickType.Up,
                                  instrumentName: "USDTRY",
                                  instrumentPrice: 18.9134,
                                  instrumentChangeRate: 0.10,
                                  instrumentChangeDate: DateTime(2023),
                                ),
                                FollowerStockItem(
                                  stockItemTickType: StockItemTickType.Up,
                                  instrumentName: "USDTRY",
                                  instrumentPrice: 18.9134,
                                  instrumentChangeRate: 0.10,
                                  instrumentChangeDate: DateTime(2023),
                                ),
                                Divider(),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10, top: 10),
                      height: 400,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(12)),
                      child: SingleChildScrollView(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Column(
                            children: [
                              Card(
                                color: Colors.grey[200],
                                child: ListTile(
                                  leading: Icon(Icons.newspaper),
                                  title: Text(
                                    "HABERLER",
                                    style: TextStyle(
                                        fontFamily: "RobotoBold",
                                        letterSpacing: 0.5,
                                        color: Colors.grey[700]),
                                  ),
                                ),
                              ),
                              NewsItem.generateNewsItem(),
                              NewsItem.generateNewsItem(),
                              NewsItem.generateNewsItem(),
                              NewsItem.generateNewsItem(),
                              NewsItem.generateNewsItem(),
                              NewsItem.generateNewsItem(),
                              Divider()
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10, top: 10),
                      height: 500,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)),
                      child: SingleChildScrollView(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Column(
                            children: [
                              Card(
                                color: Colors.grey[200],
                                child: ListTile(
                                  leading: Icon(Icons.newspaper),
                                  title: Text(
                                    "Y.D. SON GÜNCELLEMELER",
                                    style: TextStyle(
                                        fontFamily: "RobotoBold",
                                        color: Colors.grey[700],
                                        letterSpacing: 0.5),
                                  ),
                                ),
                              ),
                              InvestAdviseNewsItem.generateNewsItem(),
                              InvestAdviseNewsItem.generateNewsItem(),
                              InvestAdviseNewsItem.generateNewsItem(),
                              InvestAdviseNewsItem.generateNewsItem(),
                              InvestAdviseNewsItem.generateNewsItem(),
                              InvestAdviseNewsItem.generateNewsItem()
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container generateStockItem(String priceWay) {
    var materialColor;

    switch (priceWay) {
      case "UP":
        materialColor = Colors.green;
        break;
      case "DOWN":
        materialColor = Colors.red;
        break;
      case "NOTR":
        materialColor = Colors.grey[700];
        break;
      default:
    }

    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        )
      ], color: materialColor, borderRadius: BorderRadius.circular(5)),
      margin: EdgeInsets.all(10),
      height: 50,
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(2),
        ),
        margin: EdgeInsets.only(left: 4),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: myFollowerItemText(
                "GARAN",
                fontSize: 16,
                color: Colors.grey[850],
                letterSpacing: 0.1,
              ),
            ),
            // SizedBox(width: 70),
            Padding(
              padding: const EdgeInsets.only(top: 14, left: 80),
              child: myFollowerItemText("18.9137",
                  fontSize: 22,
                  color: materialColor,
                  letterSpacing: 0.1,
                  fontWeight: FontWeight.w900),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22, left: 10),
              child: myFollowerItemText("%0.10",
                  fontSize: 15,
                  color: materialColor,
                  fontWeight: FontWeight.w900),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22, left: 10),
              child: myFollowerItemText("10:32:27",
                  fontSize: 15,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w900),
            )
          ],
        ),
      ),
    );
  }

  Column myFollowerItemText(String text,
      {double? fontSize,
      Color? color,
      double? letterSpacing,
      EdgeInsets? edgeInsets,
      FontWeight? fontWeight}) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            letterSpacing: letterSpacing,
            fontSize: fontSize,
            color: color,
            fontWeight: fontWeight,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:investextraqnb/components/menu/menuDrawer.dart';
import 'package:investextraqnb/components/pop/baseWillPopScope.dart';
import 'package:investextraqnb/components/prices/followerStockItem.dart';

class Prices extends StatefulWidget {
  const Prices({super.key});

  @override
  State<Prices> createState() => _PricesState();
}

class _PricesState extends State<Prices> {
  @override
  Widget build(BuildContext context) {
    return BaseWillPopScope(
      isPopable: false,
      child: Scaffold(
        drawer: MenuDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: Text("FİYATLAR"),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 0),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("alarms");
                  },
                  icon: Icon(Icons.notifications)),
            )
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Colors.blue[900]),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 10, right: 10, bottom: 20),
                  child: Container(
                    // height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.analytics),
                          trailing: IconButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed("followingSettings");
                              },
                              icon: Icon(Icons.add_circle_outline_sharp)),
                          title: Text(
                            "TAKİP ETTİKLERİM",
                            style: TextStyle(
                              fontFamily: "RobotoBold",
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        Divider(
                          height: 10,
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
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

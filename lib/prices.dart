import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:investextraqnb/components/menu/menuDrawer.dart';
import 'package:investextraqnb/components/pop/baseWillPopScope.dart';

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
              padding: const EdgeInsets.only(right: 15),
              child: Icon(Icons.notifications),
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
                          trailing: Icon(Icons.add_circle),
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

class FollowerStockItem extends StatefulWidget {
  final StockItemTickType stockItemTickType;
  final String instrumentName;
  final double instrumentPrice;
  final double instrumentChangeRate;
  final DateTime instrumentChangeDate;

  const FollowerStockItem({
    super.key,
    required this.stockItemTickType,
    required this.instrumentName,
    required this.instrumentPrice,
    required this.instrumentChangeRate,
    required this.instrumentChangeDate,
  });

  @override
  State<FollowerStockItem> createState() => _FollowerStockItemState();
}

enum StockItemTickType {
  Up,
  Down,
  Notr,
}

class _FollowerStockItemState extends State<FollowerStockItem> {
  late Color _color;
  late String _instrumentName;
  late double _instrumentPrice;
  late double _instrumentChangeRate;
  //late DateTime _instrumentChangeDate;

  @override
  Widget build(BuildContext context) {
    switch (widget.stockItemTickType) {
      case StockItemTickType.Down:
        _color = Colors.red;
        break;
      case StockItemTickType.Up:
        _color = Colors.green;
        break;
      case StockItemTickType.Notr:
        _color = Colors.grey;
        break;
      default:
        break;
    }

    setState(() {
      _instrumentName = widget.instrumentName;
      _instrumentPrice = widget.instrumentPrice;
      _instrumentChangeRate = widget.instrumentChangeRate;
      // _instrumentChangeDate = widget.instrumentChangeDate;
    });

    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: () {
          debugPrint("click");
        },
        child: Ink(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 15),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 5,
                  decoration: BoxDecoration(
                      color: _color,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5))),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(2.5),
                            bottomLeft: Radius.circular(2.5),
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.ideographic,
                      children: [
                        Container(
                          width: 100,
                          //color: Colors.amber,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20, left: 10),
                            child: Text(
                              _instrumentName,
                              style: TextStyle(
                                  fontFamily: "RobotoBold",
                                  fontSize: 18,
                                  color: Colors.grey),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text(
                              _instrumentPrice.toStringAsFixed(4),
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "RobotoBold",
                                  color: _color),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 20),
                            //color: Colors.amber,
                            child: Text(
                              "%" + _instrumentChangeRate.toStringAsFixed(2),
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "RobotoBold",
                                  color: _color),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            // color: Colors.cyan,
                            child: Text(
                              "10:34:47",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "RobotoBold",
                                  color: Colors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

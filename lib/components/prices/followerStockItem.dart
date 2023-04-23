import 'package:flutter/material.dart';

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
    ValueKey valueKey = ValueKey(widget.instrumentName);

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
      key: valueKey,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .pushNamed("symbolDetail", arguments: _instrumentName);
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

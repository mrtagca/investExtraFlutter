import 'package:flutter/material.dart';

class SymbolAddDetail extends StatefulWidget {
  const SymbolAddDetail({super.key});

  @override
  State<SymbolAddDetail> createState() => _SymbolAddDetailState();
}

class _SymbolAddDetailState extends State<SymbolAddDetail> {
  bool _isChecked = false;
  var checkedList = Map<String, bool>();
  late List<SymbolItem> list;

  @override
  void initState() {
    // TODO: implement initState
    generateList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(color: Colors.grey),
              ),
              // getSymbolList("ABIBTV", "AKBNK C 31023 0016.40 IYM 00000.5 NA"),
              Expanded(child: test())
            ],
          ),
        ));
  }

  void generateList() {
    list = List<SymbolItem>.generate(10, (index) {
      return SymbolItem(
          index.toString(), "Symbol ${index}", "Symbol Description $index");
    });

    var a = list.map((e) => e.symbolId).toList();
    var b = list.map((e) => false).toList();

    checkedList = Map.fromIterables(a, b);
  }

  SingleChildScrollView test() {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Column(
        children: [
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: list.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return getSymbolList(list[index].symbolId, list[index].symbol,
                    list[index].symbolDescription);
              }),
        ],
      ),
    );
  }

  CheckboxListTile getSymbolList(
      String symbolId, String symbol, String symbolDescription) {
    return CheckboxListTile(
        key: ValueKey(symbolId),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            symbol,
            style: TextStyle(
                fontFamily: "RobotoBold",
                fontSize: 17,
                letterSpacing: 0.7,
                color: Colors.blue[800]),
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            symbolDescription,
            style: TextStyle(
                fontFamily: "RobotoBold",
                fontSize: 15,
                letterSpacing: 0.5,
                color: Colors.grey[500]),
          ),
        ),
        selected: _isChecked,
        value: checkedList[symbolId],
        onChanged: (checked) {
          var asd = checkedList[symbolId];

          setState(() {
            checkedList[symbolId] = checked as bool;
          });
        });
  }
}

class SymbolItem {
  final String symbolId;
  final String symbol;
  final String symbolDescription;

  const SymbolItem(this.symbolId, this.symbol, this.symbolDescription);
}

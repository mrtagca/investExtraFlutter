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
                  padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
                  child: Container(
                    // height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
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
                        Column(
                          children: [
                            FollowerStockItem(),
                            FollowerStockItem(),
                            FollowerStockItem(),
                            FollowerStockItem(),
                            FollowerStockItem(),
                            FollowerStockItem(),
                            FollowerStockItem(),
                            FollowerStockItem(),
                            FollowerStockItem(),
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

class FollowerStockItem extends StatelessWidget {
  const FollowerStockItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: () {
          debugPrint("click");
        },
        child: Ink(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 5,
                  decoration: BoxDecoration(
                      color: Colors.green,
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
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 10),
                          child: Text(
                            "USDTRY",
                            style: TextStyle(
                                fontFamily: "RobotoBold",
                                fontSize: 18,
                                color: Colors.grey),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "18.9137",
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: "RobotoBold",
                                color: Colors.green),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "%0.10",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: "RobotoBold",
                                color: Colors.green),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            "10:34:47",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: "RobotoBold",
                                color: Colors.grey),
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

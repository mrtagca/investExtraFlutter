import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:investextraqnb/components/menu/base/baseAppBar.dart';
import 'package:investextraqnb/components/menu/menuDrawer.dart';

class InvestAdviseTab extends StatefulWidget {
  const InvestAdviseTab({super.key});

  @override
  State<InvestAdviseTab> createState() => _InvestAdviseTabState();
}

class _InvestAdviseTabState extends State<InvestAdviseTab>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      appBar: AppBar(
        title: Text("Yatırım Danışmanlığı"),
        bottom: TabBar(isScrollable: true, controller: tabController, tabs: [
          generateTab("Son Gelişmeler"),
          generateTab("Tüm İçerikler"),
        ]),
      ),
      body: TabBarView(controller: tabController, children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
                color: Color.fromRGBO(232, 237, 240, 0.9),
                borderRadius: BorderRadius.circular(5)),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    lastInvestNewItem(),
                    lastInvestNewItem(),
                    lastInvestNewItem(),
                    lastInvestNewItem(),
                    lastInvestNewItem(),
                    lastInvestNewItem(),
                    lastInvestNewItem(),
                    lastInvestNewItem(),
                    lastInvestNewItem(),
                    lastInvestNewItem(),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          color: Colors.yellow,
          child: Center(child: Text("tab 2")),
        ),
      ]),
    );
  }

  Tab generateTab(String tabText) {
    return Tab(
      text: tabText,
    );
  }
}

class lastInvestNewItem extends StatelessWidget {
  const lastInvestNewItem({
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
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

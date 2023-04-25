import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:investextraqnb/components/menu/base/baseAppBar.dart';
import 'package:investextraqnb/components/menu/menuDrawer.dart';
import 'package:investextraqnb/components/news/investAdivseNews.dart';

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
                    InvestAdviseNewsItem(),
                    InvestAdviseNewsItem(),
                    InvestAdviseNewsItem(),
                    InvestAdviseNewsItem(),
                    InvestAdviseNewsItem(),
                    InvestAdviseNewsItem(),
                    InvestAdviseNewsItem(),
                    InvestAdviseNewsItem(),
                    InvestAdviseNewsItem(),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[800],
            //color: Color.fromRGBO(232, 237, 240, 0.9),
            //borderRadius: BorderRadius.circular(5)
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: double.infinity,
                    height: 175,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(232, 237, 240, 0.9),
                    ),
                    child: Container(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              InvestAdviseContentItem(
                                title1: "FİNANS",
                                onTap: () {
                                  setState(() {
                                    //navigation kodları
                                  });
                                },
                                title2: "BUGÜN",
                              ),
                              InvestAdviseContentItem(
                                title1: "FİNANS",
                                onTap: () {
                                  setState(() {
                                    //navigation kodları
                                  });
                                },
                                title2: "GÜNİÇİ",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
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

class InvestAdviseContentItem extends StatefulWidget {
  final String title1;
  final String? title2;
  final void Function() onTap;

  const InvestAdviseContentItem({
    super.key,
    required this.title1,
    required this.onTap,
    this.title2,
  });

  @override
  State<InvestAdviseContentItem> createState() =>
      _InvestAdviseContentItemState();
}

class _InvestAdviseContentItemState extends State<InvestAdviseContentItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 5),
                width: 5,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(1)),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: ListTile(
                      onTap: widget.onTap,
                      title: Row(
                        children: [
                          Text(
                            widget.title1,
                            style: TextStyle(
                              fontFamily: "RobotoBold",
                              letterSpacing: 0.5,
                              color: Colors.blue[900],
                              fontSize: 18,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              widget.title2 ?? "",
                              style: TextStyle(
                                color: Colors.blue[400],
                                fontFamily: "RobotoBold",
                                letterSpacing: 0.5,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.arrow_right_sharp),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

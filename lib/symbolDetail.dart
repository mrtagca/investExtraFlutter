import 'package:flutter/material.dart';
import 'package:investextraqnb/alarm.dart';
import 'package:investextraqnb/components/charts/syncfusion/SyncFusionCrosshairChart.dart';
import 'package:investextraqnb/components/menu/base/appScaffold.dart';
import 'package:investextraqnb/components/menu/base/baseAppBar.dart';
import 'package:investextraqnb/components/menu/base/basePanel.dart';
import 'package:investextraqnb/components/menu/menuDrawer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class SymbolDetail extends StatefulWidget {
  const SymbolDetail({super.key});

  @override
  State<SymbolDetail> createState() => _SymbolDetailState();
}

class _SymbolDetailState extends State<SymbolDetail> {
  CrosshairBehavior _tooltipBehavior = CrosshairBehavior(enable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: Text("SYMBOL"),
        actionWidgets: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.notifications),
          )
        ],
      ),
      body: BasePanel(
        backgroundColor: Colors.blue[800],
        height: MediaQuery.of(context).size.height - 100,
        panelBorderRadius: BorderRadius.circular(3),
        children: [
          Card(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.trending_up),
              title: Text("SEMBOL DETAY"),
              trailing: IconButton(
                  onPressed: () => {
                        Navigator.of(context).pushNamed("alarmCreate",
                            arguments: Alarm("XAUUSD", 75.71))
                      },
                  icon: Icon(Icons.notification_add)),
            ),
          ),
          Scrollbar(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(3)),
                    child: SyncFusionCrosshairChart()),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(38, 159, 36, 0.9),
                          borderRadius: BorderRadius.circular(3)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text(
                                    '10:35:39',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text(
                                    'Günlük',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          generateRow("FİYAT", 18.9137, 4, Colors.green),
                          generateRow(
                              "ALIŞ", 18.9127, 4, Colors.grey[700] as Color),
                          generateRow(
                              "SATIŞ", 18.9148, 4, Colors.grey[700] as Color),
                          generateRow(
                              "FARK", 0.0183, 4, Colors.grey[700] as Color),
                          generateRow(
                              "FARK %", 0.10, 2, Colors.grey[700] as Color),
                          generateRow("7 GÜNLÜK FARK %", 0.14, 2,
                              Colors.grey[700] as Color),
                          generateRow("30 GÜNLÜK FARK %", 0.49, 2,
                              Colors.grey[700] as Color),
                          generateRow("52 HAFTALIK FARK %", 33.05, 2,
                              Colors.grey[700] as Color),
                          generateRow("ÖNCEKİ KAPANIŞ", 18.8954, 4,
                              Colors.grey[700] as Color),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
      drawer: MenuDrawer(),
    );
  }

  Padding generateRow(
      String header, double value, int valueDigit, Color valueColor) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    header,
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    value.toStringAsFixed(valueDigit),
                    style: TextStyle(
                        // fontFamily: Theme.of(context).,
                        color: valueColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

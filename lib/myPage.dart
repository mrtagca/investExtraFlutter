import 'package:flutter/material.dart';
import 'package:investextraqnb/components/menu/base/appScaffold.dart';
import 'package:investextraqnb/components/menu/base/baseAppBar.dart';
import 'package:investextraqnb/components/menu/menuDrawer.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(title: Text("SAYFAM")),
      drawer: MenuDrawer(),
      body: Container(
        height: 500,
        color: Colors.blue[800],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.grey[200],
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      Card(
                        color: Colors.grey[200],
                        child: ListTile(
                          leading: Icon(Icons.analytics),
                          title: Text("TAKİP ETTİKLERİM"),
                          trailing: Icon(Icons.add_circle),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(5)),
                                  margin: EdgeInsets.all(10),
                                  height: 50,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    margin: EdgeInsets.only(left: 10),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding test(
      String hisse, double fiyat, double yuzdelikDegisim, String tarih) {
    return Padding(
      padding: const EdgeInsets.only(top: 2, left: 10, right: 10),
      child: Card(
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(hisse),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Row(
              children: [
                Text(
                  fiyat.toString(),
                  style: TextStyle(
                      color: Colors.green[600],
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 8),
                  child: Text(
                    "%${yuzdelikDegisim}",
                    style: TextStyle(
                        color: Colors.green[400],
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14, top: 8),
                  child: Text(
                    tarih,
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),

          //trailing: Icon(Icons.add_circle),
        ),
      ),
    );
  }
}

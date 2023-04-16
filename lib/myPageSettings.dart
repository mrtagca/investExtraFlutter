import 'package:flutter/material.dart';
import 'package:investextraqnb/components/menu/base/baseAppBar.dart';
import 'package:investextraqnb/components/menu/base/baseSwitch.dart';

class ReorderableExample extends StatefulWidget {
  const ReorderableExample({super.key});

  @override
  State<ReorderableExample> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<ReorderableExample> {
  final List<int> _items = List<int>.generate(15, (int index) => index);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);

    return Scaffold(
        appBar: BaseAppBar(title: Text("SAYFAM AYARLAR")),
        body: Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(230, 234, 238, 0.9),
                        borderRadius: BorderRadius.circular(7)),
                    height: 260,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        height: 200,
                        child: getOptions(oddItemColor, evenItemColor),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Center(
                        child: Text(
                          "Yan tarafta bulunan menü çizgileri yardımı ile sıralama\ndeğiştirbilirsiniz.",
                          style:
                              TextStyle(color: Colors.grey[100], height: 1.5),
                          textAlign: TextAlign.center,
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                        child: Image.asset(
                      "images/drag-drop-icon.png",
                      opacity: AlwaysStoppedAnimation(0.8),
                    )),
                  )
                ],
              ),
            )

            //getOptions(oddItemColor, evenItemColor),
            ));
  }

  ReorderableListView getOptions(Color oddItemColor, Color evenItemColor) {
    return ReorderableListView(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      children: <Widget>[
        for (int index = 0; index < _items.length; index += 1)
          ListTile(
              key: Key('$index'),
              tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
              title: Text('Item ${_items[index]}'),
              trailing: FittedBox(
                fit: BoxFit.fill,
                child: Row(
                  children: [
                    BaseSwitch(),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.menu,
                      color: Colors.grey[500],
                      size: 35,
                    ),
                  ],
                ),
              )),
      ],
      onReorder: (int oldIndex, int newIndex) {
        setState(() {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          final int item = _items.removeAt(oldIndex);
          _items.insert(newIndex, item);
        });
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:investextraqnb/components/menu/base/baseSwitch.dart';

class FollowingSettings extends StatefulWidget {
  const FollowingSettings({super.key});

  @override
  State<FollowingSettings> createState() => _FollowingSettingsState();
}

class _FollowingSettingsState extends State<FollowingSettings> {
  final List<int> _items = List<int>.generate(3, (int index) => index);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.close)),
        ),
        title: Text(
          "Takip Ettiklerim",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("symbolAdd");
              },
              icon: Icon(
                Icons.add,
                size: 30,
              ))
        ],
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(color: Colors.grey[200]),
        child: getOptions(oddItemColor, evenItemColor),
      ),
    );
  }

  ReorderableListView getOptions(Color oddItemColor, Color evenItemColor) {
    return ReorderableListView(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      children: <Widget>[
        for (int index = 0; index < _items.length; index += 1)
          ListTile(
              focusColor: Colors.green,
              key: Key('$index'),
              tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
              // title: Text('Ayar ${_items[index]}'),
              title: Text(
                'USDTRY',
                style: TextStyle(
                    fontFamily: "RobotoRegular",
                    fontSize: 16,
                    letterSpacing: 1,
                    color: Colors.grey[800]),
              ),
              leading: Icon(
                Icons.delete,
                color: Colors.red,
              ),
              trailing: FittedBox(
                fit: BoxFit.fill,
                child: Row(
                  children: [
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

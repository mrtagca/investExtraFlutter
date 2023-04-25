import 'package:flutter/material.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({super.key});

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      alignment: Alignment.center,
                      image: NetworkImage(
                          "https://www.qnbfi.com/images/qnbfi_logo.png"))),
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Invest Extra",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    letterSpacing: 3,
                  ),
                ),
              )),
          _addMenuItem(Text("SAYFAM"), onTap: () {
            Navigator.of(context).pushNamed("myPage");
          }, leading: Icon(Icons.person)),
          _addMenuItem(Text("YATIRIM DANIŞMANLIĞI"), onTap: () {
            Navigator.of(context).pushNamed("investAdvise");
          }, leading: Icon(Icons.person_add)),
          _addMenuItem(Text("CHAT"), leading: Icon(Icons.person_add)),
          _addMenuItem(Text("FİYATLAR"), leading: Icon(Icons.analytics),
              onTap: () {
            Navigator.of(context).pushNamed("prices");
          }),
          _addMenuItem(Text("ÜRÜN BİLGİLERİ"),
              leading: Icon(Icons.document_scanner)),
          _addMenuItem(
            Text("PROFİLİM"),
            leading: Icon(Icons.supervised_user_circle),
            onTap: () {
              Navigator.of(context).pushNamed("myProfile");
            },
          ),
        ],
      ),
    );
  }

  InkWell _addMenuItem(Widget title,
      {void Function()? onTap, Widget? leading, Widget? trailing}) {
    return InkWell(
      splashColor: Colors.cyan,
      onTap: onTap,
      child: ListTile(
        leading: leading,
        title: title,
        trailing: trailing,
      ),
    );
  }
}

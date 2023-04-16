import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

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
          ListTile(
            onTap: () => {Navigator.pushNamed(context, "myPage")},
            leading: Icon(Icons.person),
            title: Text("SAYFAM"),
          ),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text("YATIRIM DANIŞMANLIĞI"),
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text("CHAT"),
          ),
          ListTile(
            leading: Icon(Icons.analytics),
            title: Text("FİYATLAR"),
          ),
          ListTile(
            leading: Icon(Icons.document_scanner),
            title: Text("ÜRÜN BİLGİLERİ"),
          ),
          ListTile(
            leading: Icon(Icons.supervised_user_circle),
            title: Text("PROFİLİM"),
          )
        ],
      ),
    );
  }
}

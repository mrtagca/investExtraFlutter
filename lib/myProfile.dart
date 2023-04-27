import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:investextraqnb/components/menu/base/baseAppBar.dart';
import 'package:investextraqnb/components/menu/menuDrawer.dart';
import 'package:investextraqnb/components/pop/baseWillPopScope.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  ImagePicker picker = ImagePicker();
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return BaseWillPopScope(
      isPopable: false,
      child: Scaffold(
        drawer: MenuDrawer(),
        appBar: BaseAppBar(
          title: Text("PROFİLİM"),
          actionWidgets: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
            )
          ],
        ),
        body: Container(
          color: Colors.blue,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15),
                height: 150,
                child: Center(
                  child: InkWell(
                    onTap: () async {
                      image =
                          await picker.pickImage(source: ImageSource.gallery);
                    },
                    child: CircleAvatar(
                      // backgroundColor: Colors.transparent,
                      radius: 60,
                      child: ClipOval(
                        child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWlZTgxqRlFeBK30D4OPWySeg_ccckgphwmMwGEG8FUQ&s"),
                      ),
                      // foregroundImage: NetworkImage(
                      //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWlZTgxqRlFeBK30D4OPWySeg_ccckgphwmMwGEG8FUQ&s"),
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "MEHMET MERT AĞCA",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "RobotoBold",
                      fontSize: 17,
                      letterSpacing: 1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Container(
                          height: 125,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: [
                              generateProfileInfoRow(
                                  "E-mail", "mrtagcaa@gmail.com"),
                              generateProfileInfoRow("Şube", "İstanbul"),
                              generateProfileInfoRow(
                                  "Bölge", "Marmara"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[300]),
                        onPressed: () {},
                        child: Text(
                          "FİKİR VE GÖRÜŞLERİNİZİ YAZIN",
                          style: TextStyle(color: Colors.grey[700]),
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "v1.1.0",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                        shadows: [
                          Shadow(blurRadius: 1, color: Colors.white70)
                        ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row generateProfileInfoRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 10),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.grey[600],
                fontSize: 15,
                letterSpacing: 1,
                fontFamily: "RobotoRegular"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 15),
          child: Text(
            value,
            style: TextStyle(
                color: Colors.grey[600],
                fontSize: 15,
                letterSpacing: 1,
                fontFamily: "RobotoRegular"),
          ),
        ),
      ],
    );
  }
}

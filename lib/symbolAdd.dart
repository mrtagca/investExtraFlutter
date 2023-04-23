import 'package:flutter/material.dart';

class SymbolAdd extends StatefulWidget {
  const SymbolAdd({super.key});

  @override
  State<SymbolAdd> createState() => _SymbolAddState();
}

class _SymbolAddState extends State<SymbolAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sembol Ekle"),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.close),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.refresh))],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.amber),
        child: SingleChildScrollView(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(color: Colors.white),
                  child: ListView(children: [
                    generateSymbolTypeItem("Tüm Semboller", () {
                      Navigator.of(context).pushNamed("symbolAddDetail");
                    }),
                    generateSymbolTypeItem(
                        "Borsa Yatırım Fonu Endeksleri", () {}),
                    generateSymbolTypeItem("BIST Hisse Senedi", () {}),
                    generateSymbolTypeItem(
                        "BIST Vadeli ve Opsiyon Piyasası", () {}),
                    generateSymbolTypeItem("Matriks Verileri", () {}),
                    generateSymbolTypeItem("Online Spot", () {}),
                    generateSymbolTypeItem("Serbest Piyasa", () {}),
                    generateSymbolTypeItem("T.C. Merkez Bankası", () {}),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column generateSymbolTypeItem(String title, void Function()? onTap) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 30,
            child: ListTile(
              onTap: onTap,
              trailing: Icon(
                Icons.arrow_right,
                size: 40,
                color: Colors.grey[400],
              ),
              title: Text(
                title,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15,
                  fontFamily: "RobotoBold",
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

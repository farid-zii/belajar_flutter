import 'dart:math';

import 'package:flutter/material.dart';

class WidgetBuilders extends StatelessWidget {
  WidgetBuilders({super.key});

  List<KotakWarna> allItems = List.generate(
      10,
      (index) => KotakWarna(
          text: "index Ke ${index + 1}",
          //fromArgb(alfa,red,green,blue)
          //255 warna terang
          // Random().nextInt(256) -> mencari angka acak dari 0 hingga 256
          warna: Color.fromARGB(255, 100 + Random().nextInt(256),
              100 + Random().nextInt(256), 100 + Random().nextInt(256))));

  List<Map<String, dynamic>> data = List.generate(
      10,
      (index) => {
            "text": "Kotak - ${index + 1}",
            "color": Color.fromARGB(255, 100 + Random().nextInt(256),
                100 + Random().nextInt(256), 100 + Random().nextInt(256))
          });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Widget Builder",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        //GridView.Builder
        body: GridView.builder(
          itemCount: 50,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemBuilder: (context, index) => Container(
            color: Color.fromARGB(255, 60 + Random().nextInt(256),
                60 + Random().nextInt(256), 60 + Random().nextInt(256)),
          ),
        ));

    //ListView
    // body: ListView.builder(
    //   //itemCount menentukan banyak dari item yg ada pada ItemBuilder
    //   //Jika itemCount tidak ada maka akan terjadi infinity looping
    //   itemCount: 10,
    //   itemBuilder: (context, index) => KotakWarna(
    //       text: "Kotak ke ${index + 1}",
    //       warna: Color.fromARGB(255, 150 + Random().nextInt(256),
    //           150 + Random().nextInt(256), 150 + Random().nextInt(256))),
    // ));
  }
}

// Extract Widget / Resuable Widget
class KotakWarna extends StatelessWidget {
  const KotakWarna({Key? key, required this.text, required this.warna})
      : super(key: key);

  //Safety / tidak apa" kosong -> ?
  // ex : final String? text;

  final String text;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: warna,
      child: Center(
        child: Text(text),
      ),
    );
  }
}

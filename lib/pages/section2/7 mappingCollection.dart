import 'dart:math';

import 'package:flutter/material.dart';

class MappingCollection extends StatelessWidget {
  MappingCollection({super.key});

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
        title: Text("Extract Widget"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            children: data
                .map((e) => KotakWarna(text: e["text"], warna: e["color"]))
                .toList()),
        // child: Column(children: allItems),
      ),
    );
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

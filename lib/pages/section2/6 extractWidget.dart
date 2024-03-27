import 'package:flutter/material.dart';

class ExtractWidget extends StatelessWidget {
  const ExtractWidget({super.key});

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
          children: [
            KotakWarna(text: "Merah", warna: Colors.red),
            KotakWarna(text: "Biru", warna: Colors.blue),
            KotakWarna(text: "Hijau", warna: Colors.green),
            KotakWarna(text: "Amber", warna: Colors.amber),
          ],
        ),
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

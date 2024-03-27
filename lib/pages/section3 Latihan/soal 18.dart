import 'dart:math';

import 'package:flutter/material.dart';

class Soal18 extends StatelessWidget {
  const Soal18({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //Leading berfungsi untuk menampulkan logo aplikasi pada appbar
          leading: FlutterLogo(),
          title: Text(
            "Soal 18",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          //Action untuk menambahkan aksi yang didalmnya terdapat icon ...
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: ListView.builder(
          itemCount: 50,
          padding: EdgeInsets.all(20),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  color: index % 2 == 0 ? Colors.blue : Colors.amber,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Kotak Ke-${index + 1}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ));
  }
}

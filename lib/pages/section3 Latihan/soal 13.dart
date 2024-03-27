import 'dart:math';

import 'package:flutter/material.dart';

class Soal13 extends StatelessWidget {
  const Soal13({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //Leading berfungsi untuk menampulkan logo aplikasi pada appbar
          leading: FlutterLogo(),
          title: Text(
            "Soal 13",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          //Action untuk menambahkan aksi yang didalmnya terdapat icon ...
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  width: 150,
                  height: 150,
                  color: Colors.blue,
                  child: Center(
                    child: Text("Hello"),
                  ),
                ),
                // SizedBox(
                //   width: 20,
                // ),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.amber,
                  child: Center(
                    child: Text("Hello"),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // SizedBox(
                //   width: 20,
                // ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  width: 150,
                  height: 150,
                  color: Colors.amber,
                  child: Center(
                    child: Text("Hello"),
                  ),
                ),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.blue,
                  child: Center(
                    child: Text("Hello"),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

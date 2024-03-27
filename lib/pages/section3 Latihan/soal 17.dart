import 'dart:math';

import 'package:flutter/material.dart';

class Soal17 extends StatelessWidget {
  const Soal17({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //Leading berfungsi untuk menampulkan logo aplikasi pada appbar
          leading: FlutterLogo(),
          title: Text(
            "Soal 17",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          //Action untuk menambahkan aksi yang didalmnya terdapat icon ...
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemCount: 50,
          itemBuilder: (context, index) => Container(
            height: 150,
            width: 150,
            color: index % 2 == 0 ? Colors.blue : Colors.amber,
            child: Center(
              child: Text("HEllo"),
            ),
          ),
        ));
  }
}

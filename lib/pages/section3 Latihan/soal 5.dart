import 'dart:math';

import 'package:flutter/material.dart';

class Soal5 extends StatelessWidget {
  const Soal5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //Leading berfungsi untuk menampulkan logo aplikasi pada appbar
          leading: FlutterLogo(),
          title: Text(
            "Soal 5",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          //Action untuk menambahkan aksi yang didalmnya terdapat icon ...
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: Center(
          //Transform berfungsi untuk memutar widget lain yg didalamnya
          child: Container(
            color: Colors.blue.shade400,
            height: 250,
            width: 250,
            child: Center(
                child: Text(
              "Hello",
              style: TextStyle(color: Colors.white, fontSize: 50),
            )),
          ),
        ));
  }
}

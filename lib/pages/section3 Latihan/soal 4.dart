import 'dart:math';

import 'package:flutter/material.dart';

class Soal4 extends StatelessWidget {
  const Soal4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Leading berfungsi untuk menampulkan logo aplikasi pada appbar
        leading: FlutterLogo(),
        title: Text(
          "Soal 4",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        //Action untuk menambahkan aksi yang didalmnya terdapat icon ...
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: Center(
          //Transform berfungsi untuk memutar widget lain yg didalamnya
          child: Transform.rotate(
        angle: pi / (180 / 90),
        // 70 derajat = 180
        child: FlutterLogo(
          size: 200,
        ),
      )),
    );
  }
}

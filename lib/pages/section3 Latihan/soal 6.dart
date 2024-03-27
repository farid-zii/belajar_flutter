import 'dart:math';

import 'package:flutter/material.dart';

class Soal6 extends StatelessWidget {
  const Soal6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //Leading berfungsi untuk menampulkan logo aplikasi pada appbar
          leading: FlutterLogo(),
          title: Text(
            "Soal 6",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          //Action untuk menambahkan aksi yang didalmnya terdapat icon ...
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: Center(
          //Widget ClipOval berfungsi membuat widget menjadi lingkaran dan widgetnya menjadi terpotong
          child: Container(
            //Jika pemakaian decoration color wajib dimasukkan ke dalam decoration
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(250 / 2),
              color: Colors.blue.shade400,
            ),
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

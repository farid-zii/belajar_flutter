import 'package:flutter/material.dart';

class Soal1 extends StatelessWidget {
  const Soal1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Leading berfungsi untuk menampulkan logo aplikasi pada appbar
        leading: FlutterLogo(),
        title: Text(
          "Soal 1",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        //Action untuk menambahkan aksi yang didalmnya terdapat icon ...
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: Center(
        child: Text(
          "Hello Panda",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

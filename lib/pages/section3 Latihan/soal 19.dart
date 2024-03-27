import 'dart:math';

import 'package:flutter/material.dart';

class Soal19 extends StatelessWidget {
  const Soal19({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //Leading berfungsi untuk menampulkan logo aplikasi pada appbar
          leading: FlutterLogo(),
          title: Text(
            "Soal 19",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          //Action untuk menambahkan aksi yang didalmnya terdapat icon ...
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: ListView.builder(
          itemCount: 10,
          padding: EdgeInsets.all(20),
          itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Container(
                padding: EdgeInsets.all(15),
                height: 200,
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                    image: DecorationImage(
                        //boxfit.cover ->membuat gambar penuh
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://picsum.photos/id/${index + 777}/200/150"))),
                child: Text(
                  "Kotak ke ${index + 1}",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )),
        ));
  }
}

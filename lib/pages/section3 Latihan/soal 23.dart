import 'dart:math';

import 'package:flutter/material.dart';

class Soal23 extends StatelessWidget {
  const Soal23({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //Leading berfungsi untuk menampulkan logo aplikasi pada appbar
          leading: FlutterLogo(),
          title: Text(
            "Soal 23",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          //Action untuk menambahkan aksi yang didalmnya terdapat icon ...
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  ClipOval(
                    child: Container(
                      height: 265,
                      width: 265,
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 10),
                        borderRadius: BorderRadius.circular(250 / 2),
                        color: Colors.grey,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                NetworkImage("https://picsum.photos/200/150"))),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Hello Panda",
                style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline),
              )
            ],
          ),
        ));
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

class Soal24 extends StatelessWidget {
  const Soal24({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //Leading berfungsi untuk menampulkan logo aplikasi pada appbar
          leading: FlutterLogo(),
          title: Text(
            "Soal 24",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          //Action untuk menambahkan aksi yang didalmnya terdapat icon ...
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
              height: 140,
              // color: Colors.red,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.only(right: 20),
                    color: index % 2 == 0 ? Colors.blue : Colors.amber,
                  );
                },
              ),
            ),
            //Menjadikan full sisa dari widget sebelumnya
            Expanded(
              child: ListView.builder(
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
                        width: 50,
                      ),
                      Text(
                        "Kotak Ke-${index + 1}",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

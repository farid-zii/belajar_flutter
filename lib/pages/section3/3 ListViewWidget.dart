import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Visible Widget
      // 1. Appbar
      // 2. Container Jika Bewarna
      // 3. Elevated Button
      //Invisible Widget / layouting widget
      // 1.Center
      // 2.Column
      // 3.Row
      // 4.SingleChildScrollView Membuat scroll agar tidak terjadi overflow
      // 5. ListView

      //ListWidget
      // 1.Column ->vertical atau kebawah
      // 2.Row ->horizontal atau ke samping
      // 3.Stack ->Menumpuk secara sumbu z atau ke arah kita
      // 4.Listview

      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Visible dan Invisible Widget",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        //secara default scrolldirection itu vertical
        //semua isi children mengikuti axis nya jika horizontal maka heightnya tidak berlaku
        //jika vertical maka witdhnya tidak berlaku
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.amber,
            child: Center(
              child: Text("Hello"),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: Center(
              child: Text("Hello"),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
            child: Center(
              child: Text("Hello"),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.amber,
            child: Center(
              child: Text("Hello"),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: Center(
              child: Text("Hello"),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
            child: Center(
              child: Text("Hello"),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.amber,
            child: Center(
              child: Text("Hello"),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: Center(
              child: Text("Hello"),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
            child: Center(
              child: Text("Hello"),
            ),
          ),
        ],
      ),
    );
  }
}

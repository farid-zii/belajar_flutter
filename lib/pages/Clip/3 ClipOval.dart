import 'package:flutter/material.dart';

class clipOval2 extends StatelessWidget {
  const clipOval2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "ClipRRect",
          style: TextStyle(color: Colors.white),
        ),
      ),

      //Perbedaan ClipRRect & Oval
      //Jika Clip Oval memotong Semua untuk membentuk linkgaran atau oval
      //Sedangkan RReact cuman memotong radius yg diberikan untuk setiap sudut
      body: Center(
        child: ClipOval(
          child: Container(
            width: 250,
            height: 500,
            color: Colors.amberAccent,
          ),
        ),
      ),
    );
  }
}

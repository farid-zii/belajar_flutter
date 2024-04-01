import 'package:flutter/material.dart';

class clipRRect2 extends StatelessWidget {
  const clipRRect2({super.key});

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

      //Perberdaan
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(1500),
          child: Container(
            width: 250,
            height: 250,
            color: Colors.amberAccent,
          ),
        ),
      ),
    );
  }
}

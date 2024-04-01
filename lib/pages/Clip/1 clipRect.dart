import 'package:flutter/material.dart';

class clipRect1 extends StatelessWidget {
  const clipRect1({super.key});

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
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 200,
            ),
            SizedBox(
              height: 20,
            ),
            ClipRect(
              //Didalam ClipRect harus ada Align agar bisa mendapatakan Height dan width factor
              child: Align(
                //gunakan aligment untuk menentukan bagian mana yg harus di potong
                alignment: Alignment.topRight,
                // tinggi yg akan di potong
                heightFactor: 0.75,
                //Lebar yg harus di potong
                widthFactor: 0.5,
                child: Container(
                  color: Colors.amber,
                  child: FlutterLogo(
                    size: 200,
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

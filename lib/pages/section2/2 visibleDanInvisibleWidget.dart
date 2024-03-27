import 'package:flutter/material.dart';

class VisibleInvisibleWidget extends StatelessWidget {
  const VisibleInvisibleWidget({super.key});

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
      //   - mainAxisAligment (rata) default center
      //      -center(tengah)
      //      -start(awal),
      //      -end(bawah),
      //      -spaceround  -> memiliki jarak di awal diantara anak memiliki 2 kali
      //      -spacebettwen -> mementokkan diatas dan dibawah
      //      -spaceevenly -> sama rata
      //   - crossAxisAligment (rata) -> deafult start
      //      -center(tengah)
      //      -start(awal widget),
      //      -end(akhir widget)
      //      -strecth -> menjadi full
      // 3.Row
      //   - mainAxisAligment (rata) ->default start
      //      -center(tengah)
      //      -start(awal),
      //      -end(bawah),
      //      -spaceround  -> memiliki jarak di awal diantara anak memiliki 2 kali
      //      -spacebettwen -> mementokkan diatas dan dibawah
      //      -spaceevenly -> sama rata
      //   - crossAxisAligment (rata) ->default center
      //      -center(tengah)
      //      -start(atas widget),
      //      -end(bawah widget)
      //      -strecth -> menjadi full
      // 4.SingleChildScrollView Membuat scroll agar tidak terjadi overflow

      //ListWidget
      // 1.Column ->vertical atau kebawah
      // 2.Row ->horizontal atau ke samping
      // 3.Stack ->Menumpuk secara sumbu z atau ke arah kita

      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Visible dan Invisible Widget",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        //secara default scroll directionnya adalah vertical /kebawah
        scrollDirection: Axis.horizontal,
        //Jadi jika untuk row gunakan horizontal , jika column noleh dikosongjan
        child: Row(
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
      ),
    );
  }
}

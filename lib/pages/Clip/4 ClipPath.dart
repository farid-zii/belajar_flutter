import 'package:flutter/material.dart';

class ClipPath4 extends StatelessWidget {
  const ClipPath4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "ClipPath",
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
            ClipPath(
              //untuk memotong menggunakan clipper yang didalamnya terdapat class
              clipper: MyClipper4(),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.amber,
                child: FlutterLogo(
                  size: 200,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      //dari titik 0 (lebar ke 0 atau awal)  ke titik size.height atau 200 yang berasal dari container
      ..lineTo(0, size.height)
      // ke size width (200) dankembali lagi ke size.height(200)
      // ..lineTo(size.width, size.height)
      ..lineTo(size.width * 0.5, size.height)
      ..close();

    //Sama seperti berikut
    // path.lineTo(0, size.height);
    // path.lineTo(size.width, size.height);
    // path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MyClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      //Memindahkan titik potong
      ..moveTo(size.width * 0.5, 0)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MyClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var controlPoint = Offset(size.width / 2, size.height / 2);
    var endPoint = Offset(size.width, size.height);

    Path path = Path()
      //Memindahkan titik potong
      ..moveTo(size.width * 0.5, 0)

      //
      ..lineTo(0, size.height)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MyClipper4 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var controlPoint = Offset(50, size.height - 100);
    var controlPoint2 = Offset(size.width - 50, size.height);
    var endPoint = Offset(size.width, size.height - 50);

    Path path = Path()
      //Memindahkan titik potong
      ..moveTo(size.width * 0.5, 0)

      //
      ..lineTo(0, size.height - 50)
      ..cubicTo(controlPoint.dx, controlPoint.dy, controlPoint2.dx,
          controlPoint2.dy, endPoint.dx, endPoint.dy)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MyClipper5 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var controlPoint = Offset(50, size.height - 100);
    var controlPoint2 = Offset(size.width - 50, size.height);
    var endPoint = Offset(size.width, size.height - 50);

    Path path = Path()
      //Memindahkan titik potong
      ..moveTo(size.width * 0.5, 0)

      //
      ..lineTo(0, size.height - 50)
      ..cubicTo(controlPoint.dx, controlPoint.dy, controlPoint2.dx,
          controlPoint2.dy, endPoint.dx, endPoint.dy)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

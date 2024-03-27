import 'package:flutter/material.dart';

class BelajarWidget extends StatelessWidget {
  const BelajarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar untuk membuat atas
      appBar: AppBar(
        title: Text(
          "Belajar Widget",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      // body berisikan isi dari aplikasi
      body: Center(
          //Image Provider
          // 1. Asset Image -> daftarkan di pubspec.yaml
          // 2. Network Image
          // Nomor 3 & 4 jarang digunakan hanya digunakan pada masalah terentu
          // 3. File Image
          // 4. Memory Image
          // child: Image(
          //     image: NetworkImage(
          //         "https://awsimages.detik.net.id/community/media/visual/2023/04/14/gambar-pemandangan-6.jpeg?w=3000"))),
          //cara mudah
          child: Image.network(
              "https://awsimages.detik.net.id/community/media/visual/2023/04/14/gambar-pemandangan-6.jpeg?w=3000")),

      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       //onpressed fungsi ketika di klik
      //       print("Hello sayang");
      //     },
      //     child: Icon(
      //       Icons.home,
      //       size: 50,
      //       color: Colors.amber,
      //     ),
      //   ),
      // ),
    );
  }
}

// class BelajarWidget extends StatelessWidget {
//   const BelajarWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //appbar untuk membuat atas
//       appBar: AppBar(
//         title: Text(
//           "Belajar Widget",
//           style: TextStyle(color: Colors.white),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.blue,
//       ),
//       // body berisikan isi dari aplikasi
//       body: Center(
//         //center berfungsi untuk menengahkan widget
//         //didalam center memiliki anak/child yang bisa berisikan widget lain
//         child: Center(
//             //Didanlam  center ini memiliki child container
//             child: Container(
//           //container yaitu kotak yang bisa menanmpung widget lain
//           //wajib memiliki height dan witdh
//           height: 200,
//           width: 200,
//           color: Colors.amber,
//           child: Center(
//             child: FlutterLogo(
//               size: 200,
//             ),
//           ),
//         )),
//       ),
//     );
//   }
// }

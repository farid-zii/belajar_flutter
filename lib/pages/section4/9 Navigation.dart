import 'package:flutter/material.dart';

class Navigator9 extends StatefulWidget {
  Navigator9({super.key});

  @override
  State<Navigator9> createState() => _Navigator9State();
}

class _Navigator9State extends State<Navigator9> {
  List showWidget = [
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("Profile"),
    ),
    Center(
      child: Text("Cart"),
    ),
  ];

  late int dataAwal;
  late int index;

  @override
  void initState() {
    // TODO: implement initState
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PAGE HOME",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      // centerTitle: true,
      body: Center(
        child: ElevatedButton(
          child: Text("Pindah Halaman"),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Product(),
            ));
          },
        ),
      ),
    );
  }
}

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text(
          "PAGE Product",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      // centerTitle: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Halaman Product"),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Text("Kembali"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                ElevatedButton(
                  child: Text("Hlamaan Profile"),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    ));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "PROFILE PAGE",
            style: TextStyle(color: Colors.white),
          ),
          leading: SizedBox(),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Text("Halaman Profile"),
        ));
  }
}

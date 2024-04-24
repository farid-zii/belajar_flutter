import 'package:flutter/material.dart';

class BottomNav6 extends StatefulWidget {
  BottomNav6({super.key});

  @override
  State<BottomNav6> createState() => _BottomNav6State();
}

class _BottomNav6State extends State<BottomNav6> {
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
          "Bottom NavBar",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      // centerTitle: true,
      body: showWidget[index],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.teal,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black26,
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag), label: "Home"),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.settings), label: "Profile"),
            // BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Home"),
          ]),
    );
  }
}

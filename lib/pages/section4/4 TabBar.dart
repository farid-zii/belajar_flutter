import 'package:flutter/material.dart';

class Tabbar4 extends StatelessWidget {
  const Tabbar4({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.teal,
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Status",
            ),
            Tab(text: "Calls"),
            // IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt)),
            // IconButton(onPressed: () {}, icon: Icon(Icons.message)),
            // IconButton(onPressed: () {}, icon: Icon(Icons.message)),
            // IconButton(onPressed: () {}, icon: Icon(Icons.message)),
          ]),
          // centerTitle: true,
        ),
        body: TabBarView(children: [
          Center(child: Text("Camera")),
          Center(child: Text("chat")),
          Center(child: Text("status")),
          Center(child: Text("calls")),
        ]),
      ),
    );
  }
}

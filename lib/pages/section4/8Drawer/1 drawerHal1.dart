import 'package:flutter/material.dart';

class Drawer1 extends StatefulWidget {
  Drawer1({super.key});

  @override
  State<Drawer1> createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {
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
          "Drawer",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      // centerTitle: true,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  //agar tidak bisa menghilangkan show bottomsheet saat di klik
                  isDismissible: false,
                  context: context,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10))),
                  builder: (context) {
                    return SizedBox(
                      height: 300,
                      // color: Colors.white,
                      child: ListView(
                        children: [
                          ListTile(
                            leading: Icon(Icons.photo),
                            title: Text("Photo"),
                            onTap: () {
                              print("poto");
                            },
                            focusColor: Colors.amber,
                          ),
                          ListTile(
                            leading: Icon(Icons.music_note_outlined),
                            title: Text("Music"),
                          ),
                          ListTile(
                            leading: Icon(Icons.video_collection),
                            title: Text("Video"),
                          ),
                          ListTile(
                            leading: Icon(Icons.share),
                            title: Text("share"),
                          ),
                          ListTile(
                            leading: Icon(Icons.cancel),
                            title: Text("Cancel"),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Text("Show Bottom Sheet")),
        ),
      ),
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

      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(20),
              color: Colors.teal,
              width: double.infinity,
              height: 100,
              child: Text(
                "DASHBOARD MENU",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
                child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  leading: Icon(Icons.abc),
                  title: Text("ABC"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                  onTap: () {
                    print("Menu ABC");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.abc),
                  title: Text("ABC"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                  onTap: () {
                    print("Menu ABC");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.abc),
                  title: Text("ABC"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                  onTap: () {
                    print("Menu ABC");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.abc),
                  title: Text("ABC"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                  onTap: () {
                    print("Menu ABC");
                  },
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

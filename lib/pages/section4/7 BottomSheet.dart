import 'package:flutter/material.dart';

class BottomSheet7 extends StatefulWidget {
  BottomSheet7({super.key});

  @override
  State<BottomSheet7> createState() => _BottomSheet7State();
}

class _BottomSheet7State extends State<BottomSheet7> {
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
          "Bottom sheet",
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
    );
  }
}

import 'package:belajar_flutter/pages/section4%20Latihan/widgets/info_item.dart';
import 'package:belajar_flutter/pages/section4%20Latihan/widgets/profile_picture.dart';
import 'package:belajar_flutter/pages/section4%20Latihan/widgets/story_item.dart';
import 'package:belajar_flutter/pages/section4%20Latihan/widgets/tab__item.dart';
import 'package:flutter/material.dart';

class Insatgram extends StatefulWidget {
  const Insatgram({super.key});

  @override
  State<Insatgram> createState() => _InsatgramState();
}

class _InsatgramState extends State<Insatgram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "jokindoding_",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Icon(Icons.arrow_drop_down)
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Profile_picture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem("Post", 999),
                      InfoItem("Follower", 999),
                      InfoItem("Following", 999),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Joki Codingan",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: RichText(
                  text: TextSpan(
                      text: "Serahkan tugas coding kalian ke kami",
                      style: TextStyle(color: Colors.black),
                      children: [
                    TextSpan(
                      text: " #hastag",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    )
                  ]))),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Link Goes here",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: OutlinedButton(
                style: ButtonStyle(),
                onPressed: () {},
                child: Text(
                  "Edit Profile",
                  style: TextStyle(color: Colors.black),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem("Story 1", 45),
                  StoryItem("Story 2", 46),
                  StoryItem("Story 3", 39),
                  StoryItem("Story 4", 22),
                  StoryItem("Story 5", 40),
                  StoryItem("Story 6", 22),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              TabItem(active: true, icon: Icons.grid_on_outlined),
              TabItem(icon: Icons.person_pin_outlined)
              // TabItem( Icons.grid_on_outlined, true),
              // TabItem(Icons.person_pin_outlined, false),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index) => Image.network(
              "https://picsum.photos/id/${index}/536/354",
              // "https://picsum.photos/id/${index + 100}/536/354",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 4,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie),
              label: "Reels",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded),
              label: "Shop",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ]),
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;

class FutureBuilder5 extends StatefulWidget {
  const FutureBuilder5({super.key});

  @override
  State<FutureBuilder5> createState() => _FutureBuilder5State();
}

class _FutureBuilder5State extends State<FutureBuilder5> {
  late String data;

  // late String hasilrespons;

  List<Map<String, dynamic>> allUser = [];

  Future getAllUser() async {
    try {
      var resp = await myhttp.get(
        Uri.parse("https://reqres.in/api/users"),
      );
      List data = (json.decode(resp.body) as Map<String, dynamic>)["data"];

      data.forEach((element) {
        allUser.add(element);
      });

      print(allUser);
    } catch (e) {
      print("Error cok $e");
    }
    Future.delayed(Duration(seconds: 3));
  }

  @override
  void initState() {
    // TODO: implement initState
    data = "Belum ada Data";

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Future Builder",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              var resp =
                  await myhttp.get(Uri.parse("https://reqres.in/api/users/2"));

              Map<String, dynamic> mybody = json.decode(resp.body);

              setState(() {
                data = "Name : ${mybody['data']['first_name']}";
              });
            },
            icon: Icon(Icons.get_app),
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: FutureBuilder(
          future: getAllUser(),
          builder: (context, snapshot) {
            //Snapshot berfungsi untuk mengecek data pada databases
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Text("Loading...."),
              );
            }
            return ListView.builder(
              itemCount: allUser.length,
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  backgroundImage: NetworkImage(allUser[index]['avatar']),
                ),
                title: Text("${allUser[index]['first_name']}"),
                subtitle: Text("${allUser[index]['email']}"),
              ),
            );
          }),
      // body: Center(
      //   child: ElevatedButton(
      //       onPressed: () async {
      //         var resp = await myhttp.get(
      //           Uri.parse("https://reqres.in/api/users"),
      //         );
      //         List data =
      //             (json.decode(resp.body) as Map<String, dynamic>)["data"];
      //         print(data[0] as Map<String, dynamic>);

      //         data.forEach((element) {
      //           Map<String, dynamic> user = element;
      //           print(user["first_name"]);
      //         });
      //       },
      //       child: Text("KLIK")),
      // ),
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;

class HttpGet extends StatefulWidget {
  const HttpGet({super.key});

  @override
  State<HttpGet> createState() => _HttpGetState();
}

class _HttpGetState extends State<HttpGet> {
  late String bodys;
  late String id;
  late String email;
  late String name;

  @override
  void initState() {
    // TODO: implement initState
    bodys = "Belum ada Data";
    id = "";
    email = "";
    name = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Http Get",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "id: $id",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "email : $email",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "name : $name",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  var resp = await myhttp
                      .get(Uri.parse("https://reqres.in/api/users/2"));

                  if (resp.statusCode == 200) {
                    var data = json.decode(resp.body) as Map<String, dynamic>;
                    setState(() {
                      email = data['data']["email"].toString();
                      id = data['data']["id"].toString();
                      name =
                          "${data['data']["first_name"]} ${data['data']["last_name"]}";
                    });
                  } else {
                    print("Error ${resp.statusCode}");
                  }

                  print("------------");
                  print(resp.headers);
                  print("------------");
                  print(resp.body);
                  print("------------");
                  print(resp.statusCode);
                },
                child: Text("Get Data"))
          ],
        ),
      ),
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;

class HttpDelete extends StatefulWidget {
  const HttpDelete({super.key});

  @override
  State<HttpDelete> createState() => _HttpDeleteState();
}

class _HttpDeleteState extends State<HttpDelete> {
  late String data;

  // late String hasilrespons;

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
          "Http Delete",
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
      body: ListView(padding: EdgeInsets.all(20), children: [
        Text("$data"),
        SizedBox(
          height: 40,
        ),
        ElevatedButton(
            onPressed: () async {
              var resp = await myhttp.delete(
                Uri.parse("https://reqres.in/api/users/2"),
              );

              setState(() {
                if (resp.statusCode == 204) {
                  data = "Data Berhasil Dihapus";
                } else {
                  data = "Data Gagal Dihapus";
                }
              });
            },
            child: Text("Delete")),
      ]),
    );
  }
}

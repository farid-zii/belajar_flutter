import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;

class HttpPut extends StatefulWidget {
  const HttpPut({super.key});

  @override
  State<HttpPut> createState() => _HttpPutState();
}

class _HttpPutState extends State<HttpPut> {
  late String bodys;
  TextEditingController nameC = TextEditingController();
  TextEditingController jobC = TextEditingController();

  // late String hasilrespons;

  @override
  void initState() {
    // TODO: implement initState
    bodys = "Belum ada Data";
    nameC;
    jobC;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Http Put",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: ListView(padding: EdgeInsets.all(20), children: [
        TextField(
          controller: nameC,
          autocorrect: false,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: "Name",
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        TextField(
          controller: jobC,
          autocorrect: false,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: "Job",
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        ElevatedButton(
            onPressed: () async {
              var resp = await myhttp.post(
                  Uri.parse("https://reqres.in/api/users/2"),
                  body: {"name": nameC.text, "job": jobC.text});

              var data = json.decode(resp.body) as Map<String, dynamic>;

              setState(() {
                bodys = "${data['name']} - ${data['job']}";
              });
            },
            child: Text("Submit")),
        SizedBox(
          height: 30,
        ),
        Divider(
          color: Colors.black,
        ),
        SizedBox(
          height: 10,
        ),
        Text(bodys)
      ]),
    );
  }
}

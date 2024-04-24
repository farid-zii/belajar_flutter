import 'package:flutter/material.dart';

class DropDown5 extends StatefulWidget {
  DropDown5({super.key});

  @override
  State<DropDown5> createState() => _DropDown5State();
}

class _DropDown5State extends State<DropDown5> {
  final List data = [
    {
      "judul": "Anis",
      "data": 1,
    },
    {
      "judul": "Prabowo",
      "data": 2,
    },
    {
      "judul": "Ganjar",
      "data": 3,
    },
  ];

  late int dataAwal;

  @override
  void initState() {
    // TODO: implement initState
    dataAwal = data[0]["data"];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "DropDown",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.teal,
        ),
        // centerTitle: true,
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: DropdownButton<int>(
              value: dataAwal,
              items: data
                  .map(
                    (e) => DropdownMenuItem(
                      //didalam child adalah tampilan yg akan tampil pada dropdown di apps
                      child: Text("Tampilan ${e["judul"]}"),
                      //Menjadikan value sebagai integer
                      value: e["data"] as int,
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  dataAwal = value!;
                });
              },
            ),
          ),
        ));
  }
}

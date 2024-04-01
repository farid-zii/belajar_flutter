import 'package:flutter/material.dart';

class Dialog1 extends StatelessWidget {
  const Dialog1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dialog",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text("Judul"),
                        content: Text("Ini adalah isi dari konten"),
                        //
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        actionsAlignment: MainAxisAlignment.center,
                        actions: [
                          ElevatedButton(onPressed: () {}, child: Text("Ok")),
                          ElevatedButton(
                              onPressed: () {}, child: Text("Cancel"))
                        ],
                      ));
            },
            child: Text("Show Dialog")),
      ),
    );
  }
}

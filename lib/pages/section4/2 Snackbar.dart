import 'package:flutter/material.dart';

class SnackBar2 extends StatelessWidget {
  const SnackBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Snackbar",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                  "Halo dek",
                  style: TextStyle(color: Colors.black),
                ),
                backgroundColor: Colors.amber,
                duration: Duration(seconds: 3),
                //default duration adlaah 4 detik
                margin: EdgeInsets.all(20),
                behavior: SnackBarBehavior.floating,
                //default behavior adalah fixed maka jika pemakaian margin harus di ubah ke floating
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                action: SnackBarAction(
                    label: "Cancel", textColor: Colors.red, onPressed: () {}),
              ));
              ;
            },
            child: Text("Update Profile Berhasil")),
      ),
    );
  }
}

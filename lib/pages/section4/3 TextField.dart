import 'package:flutter/material.dart';

class TextField3 extends StatefulWidget {
  const TextField3({super.key});

  @override
  State<TextField3> createState() => _TextField3State();
}

class _TextField3State extends State<TextField3> {
  bool isHidden = true;

  //Untuk menampung inputan
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "TextField",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        //Untuk pembuatan textfield usahakan utk memakai listView agar tidak terjadi overflow jika widget lebih dari ukuran gadget
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            // Container(
            //   height: 400,
            //   color: Colors.amber,
            // ),
            TextField(
              controller: emailC,
              //untuk membantu ketika mengetik
              //autocorect default false
              autocorrect: false,
              //keyboardtype berfungsi untuk menentukan inputan utk user
              keyboardType: TextInputType.emailAddress,
              //text input action fungsi ketika klik done pada gadget
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                labelText: "Email",
                border:
                    //Membarikan border pada input
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: passC,
              //obscureText mengubah tulisan menjadi bintang biasanya utk password
              obscureText: isHidden,
              //untuk membantu ketika mengetik
              //autocorect default false
              autocorrect: false,
              decoration: InputDecoration(
                // prefix: Icon(Icons.remove_red_eye),
                //Prefix  di awal textfield
                prefixIcon: Icon(Icons.key),
                //suffix  di akhir
                suffixIcon: IconButton(
                  onPressed: () {
                    if (isHidden == true) {
                      isHidden = false;
                    } else {
                      isHidden = true;
                    }
                    setState(() {});
                  },
                  icon: Icon(Icons.remove_red_eye),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                labelText: "Password",
                border:
                    //Membarikan border pada input
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                print("${emailC.text} && ${passC.text}");
                // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                //     content: Container(
                //   height: 30,
                //   padding: EdgeInsets.all(20),
                //   color: Colors.amber,
                //   child: Text(
                //     "${emailC}",
                //     style: TextStyle(color: Colors.white),
                //   ),
                // )));
              },
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
            )
          ],
        ));
  }
}

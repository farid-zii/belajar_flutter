import 'package:flutter/material.dart';

class Profile_picture extends StatelessWidget {
  const Profile_picture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.amber],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
        ),
        Container(
          width: 115,
          height: 115,
          decoration: BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(
                image: NetworkImage("https://picsum.photos/536/354"),
                fit: BoxFit.fill),
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(60),
          ),
        ),
      ],
    );
  }
}

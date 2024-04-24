import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  StoryItem(this.title, this.id);

  final String title;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.grey[300]),
              ),
              Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.white, width: 2),
                    color: Colors.amber,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://picsum.photos/id/$id/536/354"),
                        fit: BoxFit.fill)),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(title)
        ],
      ),
    );
  }
}

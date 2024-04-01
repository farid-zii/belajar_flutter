import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carousel"),
      ),
      body: CarouselSlider(
        options: CarouselOptions(
            height: 400.0,
            viewportFraction: 0.6,
            // aspectRatio: 3 / 1,
            //autoplay membuat slider jalan sendiri
            autoPlay: true,
            //autoplayInterval membuat berapa lama slider akan berganti
            autoPlayInterval: Duration(seconds: 2),
            //enlargeCenterPage membuat slider yg ditengah membesar jika viewportFraction < 1
            enlargeCenterPage: true,
            reverse: true,
            //Menetukan scroll pada slider
            scrollDirection: Axis.vertical),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(color: Colors.amber),
                  child: Center(
                    child: Text(
                      'text $i',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ));
            },
          );
        }).toList(),
      ),
    );
  }
}

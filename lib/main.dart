import 'package:belajar_flutter/pages/Carousel/carousel.dart';
import 'package:belajar_flutter/pages/Carousel/carouselSlider.dart';
import 'package:belajar_flutter/pages/Clip/1%20clipRect.dart';
import 'package:belajar_flutter/pages/Clip/2%20ClipRRect.dart';
import 'package:belajar_flutter/pages/Clip/4%20ClipPath.dart';
import 'package:belajar_flutter/pages/latihan-latihan/contact.dart';
import 'package:belajar_flutter/pages/section3%20Latihan/soal%201.dart';
import 'package:belajar_flutter/pages/section3%20Latihan/soal%2010.dart';
import 'package:belajar_flutter/pages/section3%20Latihan/soal%2011.dart';
import 'package:belajar_flutter/pages/section3%20Latihan/soal%2012.dart';
import 'package:belajar_flutter/pages/section3%20Latihan/soal%2013.dart';
import 'package:belajar_flutter/pages/section3%20Latihan/soal%2014.dart';
import 'package:belajar_flutter/pages/section3%20Latihan/soal%2015.dart';
import 'package:belajar_flutter/pages/section3%20Latihan/soal%2016.dart';
import 'package:belajar_flutter/pages/section3%20Latihan/soal%2017.dart';
import 'package:belajar_flutter/pages/section3%20Latihan/soal%2018.dart';
import 'package:belajar_flutter/pages/section3%20Latihan/soal%2019.dart';
import 'package:belajar_flutter/pages/section3%20Latihan/soal%202.dart';
import 'package:belajar_flutter/pages/section3%20Latihan/soal%2020.dart';
import 'package:belajar_flutter/pages/section3%20Latihan/soal%2021.dart';
import 'package:belajar_flutter/pages/section3%20Latihan/soal%2022.dart';
import 'package:belajar_flutter/pages/section3%20Latihan/soal%2023.dart';
import 'package:belajar_flutter/pages/section3%20Latihan/soal%2024.dart';
import 'package:belajar_flutter/pages/section3%20Latihan/soal%203.dart';
import 'package:belajar_flutter/pages/section3%20Latihan/soal%204.dart';
import 'package:belajar_flutter/pages/section3%20Latihan/soal%205.dart';
import 'package:belajar_flutter/pages/section3%20Latihan/soal%206.dart';
import 'package:belajar_flutter/pages/section3%20Latihan/soal%207.dart';
import 'package:belajar_flutter/pages/section3%20Latihan/soal%208.dart';
import 'package:belajar_flutter/pages/section3%20Latihan/soal%209.dart';
import 'package:belajar_flutter/pages/section3/1%20belajar_widget.dart';
import 'package:belajar_flutter/pages/section3/2%20visibleDanInvisibleWidget.dart';
import 'package:belajar_flutter/pages/section3/3%20ListViewWidget.dart';
import 'package:belajar_flutter/pages/section3/4%20stack.dart';
import 'package:belajar_flutter/pages/section3/5.%20GridView.dart';
import 'package:belajar_flutter/pages/section3/6%20extractWidget.dart';
import 'package:belajar_flutter/pages/section3/8%20WidgetBuilder.dart';
import 'package:belajar_flutter/pages/section4/1%20dialog.dart';
import 'package:belajar_flutter/pages/section4/2%20Snackbar.dart';
import 'package:belajar_flutter/pages/section4/3%20TextField.dart';
import 'package:belajar_flutter/pages/section4/4%20TabBar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //untuk menghilangkan lambang debug pada aplikasi
        debugShowCheckedModeBanner: false,
        home: Tabbar4());
  }
}

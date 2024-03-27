import 'package:belajar_flutter/pages/section2%20Latihan/soal%201.dart';
import 'package:belajar_flutter/pages/section2%20Latihan/soal%2010.dart';
import 'package:belajar_flutter/pages/section2%20Latihan/soal%2011.dart';
import 'package:belajar_flutter/pages/section2%20Latihan/soal%2012.dart';
import 'package:belajar_flutter/pages/section2%20Latihan/soal%2013.dart';
import 'package:belajar_flutter/pages/section2%20Latihan/soal%2014.dart';
import 'package:belajar_flutter/pages/section2%20Latihan/soal%2015.dart';
import 'package:belajar_flutter/pages/section2%20Latihan/soal%2016.dart';
import 'package:belajar_flutter/pages/section2%20Latihan/soal%2017.dart';
import 'package:belajar_flutter/pages/section2%20Latihan/soal%2018.dart';
import 'package:belajar_flutter/pages/section2%20Latihan/soal%2019.dart';
import 'package:belajar_flutter/pages/section2%20Latihan/soal%202.dart';
import 'package:belajar_flutter/pages/section2%20Latihan/soal%2020.dart';
import 'package:belajar_flutter/pages/section2%20Latihan/soal%2021.dart';
import 'package:belajar_flutter/pages/section2%20Latihan/soal%2022.dart';
import 'package:belajar_flutter/pages/section2%20Latihan/soal%2023.dart';
import 'package:belajar_flutter/pages/section2%20Latihan/soal%2024.dart';
import 'package:belajar_flutter/pages/section2%20Latihan/soal%203.dart';
import 'package:belajar_flutter/pages/section2%20Latihan/soal%204.dart';
import 'package:belajar_flutter/pages/section2%20Latihan/soal%205.dart';
import 'package:belajar_flutter/pages/section2%20Latihan/soal%206.dart';
import 'package:belajar_flutter/pages/section2%20Latihan/soal%207.dart';
import 'package:belajar_flutter/pages/section2%20Latihan/soal%208.dart';
import 'package:belajar_flutter/pages/section2%20Latihan/soal%209.dart';
import 'package:belajar_flutter/pages/section2/1%20belajar_widget.dart';
import 'package:belajar_flutter/pages/section2/2%20visibleDanInvisibleWidget.dart';
import 'package:belajar_flutter/pages/section2/3%20ListViewWidget.dart';
import 'package:belajar_flutter/pages/section2/4%20stack.dart';
import 'package:belajar_flutter/pages/section2/5.%20GridView.dart';
import 'package:belajar_flutter/pages/section2/6%20extractWidget.dart';
import 'package:belajar_flutter/pages/section2/8%20WidgetBuilder.dart';
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
        home: Soal24());
  }
}

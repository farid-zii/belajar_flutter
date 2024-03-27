import 'package:belajar_flutter/pages/section2/1%20belajar_widget.dart';
import 'package:belajar_flutter/pages/section2/2%20visibleDanInvisibleWidget.dart';
import 'package:belajar_flutter/pages/section2/3%20ListViewWidget.dart';
import 'package:belajar_flutter/pages/section2/4%20stack.dart';
import 'package:belajar_flutter/pages/section2/5.%20GridView.dart';
import 'package:belajar_flutter/pages/section2/6%20extractWidget.dart';
import 'package:belajar_flutter/pages/section2/7%20mappingCollection.dart';
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
        home: MappingCollection());
  }
}

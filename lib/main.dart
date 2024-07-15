//import 'package:abc/crslider.dart';
import 'package:abc/buy.dart';
import 'package:abc/img.dart';
import 'package:abc/info.dart';
import 'package:abc/sell.dart';
import 'package:abc/wh.dart';
import 'package:flutter/material.dart';

//import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'abc',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Wh(),
    );
  }
}

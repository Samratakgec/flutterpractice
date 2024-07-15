import 'package:abc/p1.dart';
import 'package:abc/p2.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CrSlider extends StatefulWidget {
  const CrSlider({super.key});

  @override
  State<CrSlider> createState() => _CrSliderState();
}

class _CrSliderState extends State<CrSlider> {
  List<Widget> item = [p1(), p2()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('carousel_slider'),
      ),
      body: CarouselSlider(
        items: item,
        options: CarouselOptions(
            height: 200, // Adjust the height as needed

            //aspectRatio: 16 / 9, // Adjust the aspect ratio as needed
            enlargeCenterPage: true,
            autoPlay: true, // Set to true for auto-play
            autoPlayInterval: Duration(seconds: 3), // Time between auto-plays
            autoPlayAnimationDuration:
                Duration(milliseconds: 800), // Animation duration
            viewportFraction: 1),
      ),
    );
  }
}

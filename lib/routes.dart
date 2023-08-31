import 'package:blissful_blossom/page1.dart';
import 'package:blissful_blossom/page2.dart';
import 'package:blissful_blossom/page3.dart';
import 'package:blissful_blossom/page4.dart';
import 'package:blissful_blossom/page5.dart';
import 'package:flutter/material.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({Key? key, required this.index}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      const Page1(),
      const Page2(),
      const Page3(),
      const Page4(),
      const Page5(),
    ];
    return myList[index];
  }
}
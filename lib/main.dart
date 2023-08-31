import 'package:blissful_blossom/routes.dart';
import 'package:blissful_blossom/bottom_nav.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'BLISSFUL BLOSSOM',
      home: HomePage(),
        );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  BNavigator ?myBNB;

  @override
  void initState() {
    myBNB = BNavigator(currentIndex: (i){
      setState(() {
        index = i;
      });
    });
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BLISSFUL BLOSSOM',
          style: TextStyle(color: Color.fromRGBO(255, 251, 226, 1)),
        ),
        centerTitle: true,
        elevation: 10,
        backgroundColor: const Color.fromRGBO(41, 55, 28, 1),
      ),
      bottomNavigationBar: myBNB,
      body: Routes(index: index),
      
    );
  }
}
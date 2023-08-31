import 'package:flutter/material.dart';

class BNavigator extends StatefulWidget {
  final Function currentIndex;
  const BNavigator({Key? key, required this.currentIndex}) :super(key: key);
  
  @override
  // ignore: library_private_types_in_public_api
  _BNavigatorState createState() => _BNavigatorState();
}

class _BNavigatorState extends State<BNavigator> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (int i){
        setState(() {
          index = i;
          widget.currentIndex(i);
        });
      },
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color.fromRGBO(209, 204, 34, 1),
      selectedItemColor: const Color.fromRGBO(255, 251, 226, 1),
      iconSize: 25.0,
      selectedFontSize: 14.0,
      unselectedFontSize: 12.0,
      unselectedItemColor: const Color.fromRGBO(41, 55, 28, 1),
      
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          ),
          
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search'
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'User'
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Cart'
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings'
          ),
          
      ],
    );
  }
}
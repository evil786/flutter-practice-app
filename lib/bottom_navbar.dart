import 'package:flutter/material.dart';
import 'package:assii/tab_bar.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int selectedIndex = 0;

  List pages = [
    Container(
      alignment: Alignment.center,
      color: Colors.blueGrey,
      child: Text('Home Page'),
    ),
    Container(
      alignment: Alignment.center,
      color: Colors.grey,
      child: Text('Search'),
    ),
    Container(
      alignment: Alignment.center,
      color: Colors.green,
      child: Text('Chat'),
    ),
    Container(
      alignment: Alignment.center,
      color: Colors.blue,
      child: Text('Profile'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navbar'),
        centerTitle: true,
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.blueGrey,
        currentIndex: selectedIndex,
        onTap: (val) {
          setState(() {
            selectedIndex = val;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ('Search')),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: ('Chat')),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ('profile')),
        ],
      ),
    );
  }
}

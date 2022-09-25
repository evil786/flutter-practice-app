import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'Day_3.dart';
import 'day_1.dart';
import 'day_2.dart';

class BottomNavBar2 extends StatefulWidget {
  @override
  _BottomNavBar2State createState() => _BottomNavBar2State();
}

class _BottomNavBar2State extends State<BottomNavBar2> {
  int selectedIndex = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  List pages = [
    DayOne(),DayTwo(),DayThree(),DayTwo(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: <Widget>[
            Icon(Icons.home, size: 30,color: Colors.white),
            Icon(Icons.menu_book, size: 30,color: Colors.white),
            Icon(Icons.favorite_border_outlined, size: 30,color: Colors.white),
            Icon(Icons.perm_identity, size: 30,color: Colors.white),
          ],
          color: Color(0xff72C6EF),
          buttonBackgroundColor: Colors.blueGrey,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: pages[selectedIndex],


    );
  }
}

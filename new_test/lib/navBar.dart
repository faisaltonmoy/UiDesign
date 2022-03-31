import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'home.dart';

GlobalKey btm_nav_key = GlobalKey();

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  int pgIndex = 0;
  int pg = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: btm_nav_key,
          index: 0,
          height: 50,
          items: <Widget>[
            Icon(Icons.home, size: 30, color: Colors.black38),
            Icon(Icons.shopping_cart, size: 30, color: Colors.black38),
            Icon(Icons.favorite, size: 30, color: Colors.black38),
            Icon(Icons.list, size: 30, color: Colors.black38)
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.transparent,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 800),
          onTap: (index) {
            setState(() {
              pg = index;
            });
          },
        ),
        body:
        (pgIndex == 0) ? Home() : (pgIndex == 1) ? profile() : settings(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Profile page"),
      ),
    );
  }
}

class settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Settings page"),
      ),
    );
  }
}

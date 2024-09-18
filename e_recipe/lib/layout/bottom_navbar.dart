import 'package:e_recipe/pages/favoritepages.dart';
import 'package:e_recipe/pages/homepages.dart';
import 'package:e_recipe/pages/recipepages.dart';
import 'package:flutter/material.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';

class MyNavbar extends StatefulWidget {
  const MyNavbar({super.key});

  @override
  State<MyNavbar> createState() => _MyNavbarState();
}

class _MyNavbarState extends State<MyNavbar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetoption = <Widget>[
    Homepage(),
    MyFavorite(),
    MyRecipe(),
  ];

  void _onitemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetoption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CircleNavBar(
        activeIndex: _selectedIndex,
        activeIcons: const [
          Icon(Icons.home, color: Color.fromARGB(255, 124, 245, 255)),
          Icon(Icons.favorite, color: Color.fromARGB(255, 124, 245, 255)),
          Icon(
            Icons.list,
            color: Color.fromARGB(255, 124, 245, 255),
          )
        ],
        inactiveIcons: const [
          Text("Home"),
          Text("Favorites"),
          Text("My Recipe"),
        ],
        color: const Color.fromARGB(255, 124, 245, 255),
        circleColor: const Color.fromARGB(255, 38, 53, 93),
        height: 60,
        circleWidth: 60,
        onTap: _onitemTapped,
        // tab curve
        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 10),
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
        shadowColor: Colors.blue,
        circleShadowColor: Colors.blue,
        elevation: 10,
      ),
    );
  }
}

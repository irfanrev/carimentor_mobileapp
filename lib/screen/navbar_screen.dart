import 'package:flutter/material.dart';
import 'package:flutter_submission/screen/diskusi_screen.dart';
import 'package:flutter_submission/screen/home_screen.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  final _layoutPage = [HomePage(), Diskusi()];

  void _onTabItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.chat_rounded),
            title: Text('Diskusi'),
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),
    );
  }
}
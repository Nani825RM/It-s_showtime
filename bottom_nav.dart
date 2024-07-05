//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:first_project/nav_screens/screen1.dart';
import 'package:first_project/nav_screens/screen2.dart';
import 'package:first_project/nav_screens/screen3.dart';
import 'package:first_project/nav_screens/screen4.dart';



class BottomNavigationBarApp extends StatelessWidget {
  final String username;

   const BottomNavigationBarApp({Key? key, required this.username}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Navigation Bar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Screen1(),
    Screen2(),
    Screen3(),
    Screen4()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize:20,
        backgroundColor: Colors.orange,
        unselectedIconTheme: IconThemeData(color: Colors.black),
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_creation),
            label: 'movies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monitor_outlined),
            label: 'webseries',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            label: 'animation',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

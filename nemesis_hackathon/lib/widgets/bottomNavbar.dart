import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:nemesis_hackathon/screens/dummy%20copy.dart';
import 'package:nemesis_hackathon/screens/dummy.dart';
import 'package:nemesis_hackathon/screens/home_page.dart';
import 'package:nemesis_hackathon/screens/profile.dart';
import 'package:nemesis_hackathon/screens/waste_selection.dart';

// void main() => runApp(MaterialApp(home: BottomNavBar()));
//semester
//branch
//subject
//period
class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 1;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final screens = [
    const ProfileScreen(),
    const HomePage(),
    const WasteSelectionPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.transparent,
      body: screens[_page],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 1,
        height: 60.0,
        items: const <Widget>[
          Icon(Icons.add, color: Colors.white, size: 30),
          Icon(Icons.home, color: Colors.white, size: 30),
          Icon(Icons.perm_identity, color: Colors.white, size: 30),
        ],
        color: Theme.of(context).colorScheme.primary,
        buttonBackgroundColor: Color.fromARGB(255, 62, 46, 88),
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 200),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}

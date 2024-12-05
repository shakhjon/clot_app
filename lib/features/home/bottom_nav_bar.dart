import 'package:flutter/material.dart';

import 'home_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  List<Widget> body = const [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepPurpleAccent,
        currentIndex: _currentIndex,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItemWidget(
            "Home",
            "assets/images/home.png",
          ),
          BottomNavigationBarItemWidget(
            " Notification",
            "assets/images/notification.png",
          ),
          BottomNavigationBarItemWidget(
            " Mark",
            "assets/images/mark.png",
          ),
          BottomNavigationBarItemWidget(
            " Profile",
            "assets/images/person.png",
          ),
        ],
      ),
    );
  }
}

BottomNavigationBarItemWidget(String label, String text) {
  return BottomNavigationBarItem(
    backgroundColor: Colors.black,
    label: label,
    icon: ImageIcon(
      AssetImage(text),
      size: 45,
    ),
  );
}

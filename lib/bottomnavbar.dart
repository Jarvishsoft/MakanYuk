import 'package:flutter/material.dart';

class BottomNavBarMenu extends StatefulWidget {
  const BottomNavBarMenu({super.key});

  @override
  State<BottomNavBarMenu> createState() => _BottomNavBarMenuState();
}

class _BottomNavBarMenuState extends State<BottomNavBarMenu> {
  int _selectedIndex = 0;
  void selectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: selectedIndex,
      currentIndex: _selectedIndex,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.rice_bowl_rounded),
          label: 'Home',
          // activeIcon: Icon(Icons.rice_bowl_outlined),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_bag_rounded,
            // color: Colors.grey,
          ),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_rounded),
          label: 'List Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_active_rounded),
          label: 'Notifications',
        ),
      ],
    );
  }
}

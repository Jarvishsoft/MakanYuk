import 'package:flutter/material.dart';
import 'package:makan_yuk/bottomnavbar/pesanan.dart';
import 'package:makan_yuk/bottomnavbar/riwayat.dart';

import '../ui/homemakan.dart';

class BottomNavBarMenu extends StatefulWidget {
  const BottomNavBarMenu({super.key});

  @override
  State<BottomNavBarMenu> createState() => _BottomNavBarMenuState();
}

class _BottomNavBarMenuState extends State<BottomNavBarMenu> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();

  @override
  void initState() {
    _pageController = PageController(initialPage: _selectedIndex);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastLinearToSlowEaseIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          children: const [
            HomeMakan(),
            DaftarPesanan(),
            RiwayatPemesanan(),
            // DetailMenuMakan(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        onTap: onItemTapped,
        currentIndex: _selectedIndex,
        elevation: 0,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 0
                ? Icons.rice_bowl_rounded
                : Icons.rice_bowl_outlined),
            label: 'Home',
            // activeIcon: Icon(Icons.rice_bowl_outlined),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 1
                  ? Icons.shopping_bag_rounded
                  : Icons.shopping_bag_outlined,
              // color: Colors.grey,
            ),
            label: 'Pesanan',
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 2
                ? Icons.history_toggle_off_rounded
                : Icons.history_toggle_off_outlined),
            label: 'Riwayat',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(_selectedIndex == 3
          //       ? Icons.notifications_active_rounded
          //       : Icons.notifications_active_outlined),
          //   label: 'Notifications',
          // ),
        ],
      ),
    );
  }
}

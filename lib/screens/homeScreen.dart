import 'package:Sneaky/Pages/homeBar/homeBar.dart';
import 'package:Sneaky/Pages/profile/profileBar.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../Pages/cartBar/cart.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _navigatorBottmBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _Bar = [
    HomeBar(),
    CartBar(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _Bar[_selectedIndex],
        bottomNavigationBar: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: GNav(
              backgroundColor: Colors.black,
              color: Colors.white,
              gap: 8,
              tabBackgroundColor: Colors.grey.shade800,
              activeColor: Colors.white,
              padding: const EdgeInsets.all(8),
              onTabChange: _navigatorBottmBar,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: ' Home  ',
                ),
                GButton(
                  icon: Icons.shopping_bag,
                  text: ' Cart  ',
                ),
                GButton(
                  icon: Icons.person_2,
                  text: 'Profile',
                ),
              ],
            ),
          ),
        ));
  }
}

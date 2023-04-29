import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sneakers_app/files/bar/cartBar/cart.dart';
import 'package:sneakers_app/files/bar/homeBar/homeBar.dart';
import 'package:sneakers_app/files/bar/offersBar/offerBar.dart';
import 'package:sneakers_app/files/bar/profileBar/profileBar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigatorBottmBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

   List<Widget> _Bar = [
   HomeBar(),
   OfferBar(),
   CartBar(),
   ProfileBar(),
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
                  icon: Icons.discount_sharp,
                  text: 'Offers ',
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

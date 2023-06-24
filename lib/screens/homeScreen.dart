import 'package:assignmnet/Pages/cartPage.dart';
import 'package:assignmnet/Pages/homePage.dart';
import 'package:assignmnet/Pages/profilePage.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myIndex = 0;
  List<Widget> listOfScreen = [
    HomePage(),
    CartPage(),
    ProfilePage(),
    // Text("hello"),
    // Text("hello"),
   // Text("hello"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(child: listOfScreen[myIndex]),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          backgroundColor: Colors.grey[300],
          type: BottomNavigationBarType.fixed,
          items: const  [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]), 
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_app/files/bar/cartBar/cartList.dart';
import 'package:sneakers_app/files/bar/homeBar/shoeList.dart';
import 'package:sneakers_app/files/homePage.dart';
import 'package:sneakers_app/files/startupPage.dart';
import 'package:sneakers_app/models/shoe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Cart(),
        builder: (context, index) => const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: StartupPage(),
            ));
  }
}

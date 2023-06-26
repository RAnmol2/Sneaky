import 'package:assignmnet/Pages/homeBar/homeBar.dart';
import 'package:assignmnet/Pages/profile/editingProfile.dart';
import 'package:assignmnet/Pages/profile/profileTiles.dart';
import 'package:assignmnet/screens/homeScreen.dart';
import 'package:assignmnet/screens/loginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final userEmail = FirebaseAuth.instance.currentUser!;
  void SignUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20),),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
         leading: BackButton(
          color: Colors.black,
          onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => HomeScreen()));
        },),
      ),
        body: SafeArea(
            child: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              color: Colors.grey[300],
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 90,
                      height: 90,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(45),
                          child: Image.asset("lib/image/profile.jpeg")),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Anmol Singh",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      userEmail.email!,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => EditingProfile()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black,
                          ),
                          height: 45,
                          width: 130,
                          child: const Center(
                              child: Text(
                            "Edit profile",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ProfileTiles(
              Title: "settings",
              Icons: Icons.settings,
            ),
            const ProfileTiles(
              Title: "Billing details",
              Icons: Icons.wallet,
            ),
            const ProfileTiles(
              Title: "Help center",
              Icons: Icons.help_center,
            ),
            const ProfileTiles(
              Title: "About us",
              Icons: Icons.person,
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: SignUserOut,
              child: ProfileTiles(
                Title: "Logout",
                color: Colors.red,
                Icons: Icons.logout,
              ),
            ),
            //     ProfileTiles(Title: "", Icons: Icons.search, OnTab: ""),
          ],
        ),
      ),
    ))
        //Center(child: Text("User email is :"+userEmail.email!))
        );
  }
}

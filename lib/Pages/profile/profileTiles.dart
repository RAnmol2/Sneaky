import 'package:flutter/material.dart';

class ProfileTiles extends StatelessWidget {
  final String Title;
  final IconData Icons;
  final Color? color;

  // final OnTab;
  const ProfileTiles({
    super.key,
    required this.Title,
    required this.Icons,
    this.color,
    //  required this.OnTab
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
      child: ListTile(
        //  onTap: OnTab,
        tileColor: Colors.grey[200],
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), color: Colors.white),
          child: Icon(Icons),
        ),
        title: Text(Title,style: TextStyle(color: color),),
      ),
    );
  }
}

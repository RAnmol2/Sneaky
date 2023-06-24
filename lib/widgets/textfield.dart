import 'package:flutter/material.dart';

class LoginText extends StatelessWidget {
  final TextEditingController controller;
  final String HintText;
  final bool obscureText;
  const LoginText({super.key, required this.HintText, required this.controller, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: 250,
      child: Center(
        child: TextField(
          cursorColor: Colors.black,
          
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: HintText,
            
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(),
            )
          ),
        ),
      ),
    );
    // return Container(
    //   height: 42,
    //   width: 250,
    //   child: TextFormField(
    //     decoration: InputDecoration(
    //       hintText: HintText,
    //       enabledBorder: OutlineInputBorder(borderSide: BorderSide()),
    //     ),
    //   ),
    // );
  }
}

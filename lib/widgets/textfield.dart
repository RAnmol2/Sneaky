import 'package:flutter/material.dart';

class LoginText extends StatelessWidget {
  final TextEditingController controller;
  final String HintText;
  final bool obscureText;
  final IconData Icons;
  const LoginText(
      {super.key,
      required this.HintText,
      required this.controller,
      required this.obscureText,
      required this.Icons
      });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: 280,
      child: Center(
        child: TextField(
          cursorColor: Colors.black,
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
              hintText: HintText,
              prefixIcon: Icon(Icons),
              prefixIconColor: Colors.black87,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(),
              )),
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

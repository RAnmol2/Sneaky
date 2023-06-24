import 'package:assignmnet/screens/signUpScreen.dart';
import 'package:assignmnet/widgets/textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailEditingControler = TextEditingController();
  final passwordEditingControler = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailEditingControler.dispose();
    passwordEditingControler.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 170),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(children: [
                const SizedBox(
                  height: 60,
                ),
                const Center(
                    child: Text(
                  "Log in",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
                const SizedBox(
                  height: 45,
                ),
                LoginText(
                  HintText: "Enter your Email",
                  obscureText: false,
                  controller: emailEditingControler,
                ),
                const SizedBox(
                  height: 12,
                ),
                LoginText(
                  HintText: "Enter your password",
                  obscureText: true,
                  controller: passwordEditingControler,
                ),
                const SizedBox(
                  height: 40,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color: Colors.black,
                    height: 45,
                    width: 250,
                    child: const Center(
                        child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account ?",
                      style: TextStyle(fontSize: 15),
                    ),
                    GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupScreen())),
                        child: Text(
                          "signup",
                          style: TextStyle(color: Colors.blue, fontSize: 15),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

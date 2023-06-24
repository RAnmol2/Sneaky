import 'package:assignmnet/screens/loginScreen.dart';
import 'package:flutter/material.dart';
import '../widgets/textfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final emailEditingControler = TextEditingController();
  final passwordEditingControler = TextEditingController();
  final confirepasswordControler = TextEditingController();
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 150),
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
                  "SignUp",
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
                  height: 12,
                ),
                LoginText(
                  HintText: "Confirm your password",
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
                      "SignUp",
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
                      "Go back to ",
                      style: TextStyle(fontSize: 15),
                    ),
                    GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen())),
                        child: Text(
                          "login",
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

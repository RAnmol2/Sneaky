import 'package:Sneaky/screens/homeScreen.dart';
import 'package:Sneaky/screens/loginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
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

  void SignUpUser() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
              child: CircularProgressIndicator(
            color: Colors.black,
          ));
        });
    try {
      if (passwordEditingControler.text == confirepasswordControler.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailEditingControler.text,
            password: passwordEditingControler.text);
        Navigator.of(context).pop(
            MaterialPageRoute(builder: (context) => const HomeScreen()));
         Navigator.pop(context);
      } else {
        showErrorMessage("password is not match");
        Navigator.pop(context);
      }
    } on FirebaseAuthException catch (e) {
      showErrorMessage(e.code);
      Navigator.pop(context);
    }
  }

  void showErrorMessage(String messaeg) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            title: Center(
                child: Text(
              messaeg,
              style: TextStyle(color: Colors.red),
            )),
          );
        });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailEditingControler.dispose();
    passwordEditingControler.dispose();
    confirepasswordControler.dispose();
  }

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
                  Icons: Icons.email,
                  HintText: "Enter your Email",
                  obscureText: false,
                  controller: emailEditingControler,
                ),
                const SizedBox(
                  height: 12,
                ),
                LoginText(
                  Icons: Icons.fingerprint_rounded,
                  HintText: "Enter your password",
                  obscureText: true,
                  controller: passwordEditingControler,
                ),
                const SizedBox(
                  height: 12,
                ),
                LoginText(
                  Icons: Icons.fingerprint_rounded,
                  HintText: "Confirm your password",
                  obscureText: true,
                  controller: confirepasswordControler,
                ),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: SignUpUser,
                  child: ClipRRect(
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
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Go back to ",
                      style: TextStyle(fontSize: 15),
                    ),
                    GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen())),
                        child: const Text(
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

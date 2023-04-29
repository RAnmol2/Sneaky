import 'package:flutter/material.dart';
import 'package:sneakers_app/files/bar/profileBar/profileBar.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('            Personal Details'),
        // automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Container(
                height: 120,
                width: 120,
                child: Image.asset('lib/image/profile.jpeg'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Edit Picture',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                  fontSize: 15),
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: ListView(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        fillColor: Colors.white,
                        hintText: "Enter Your Name",
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(12))),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email),
                        hintText: "Enter Your Email",
                        
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(12))),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.mobile_friendly_outlined),
                        fillColor: Colors.white,
                        hintText: "Phone Number",
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(12))),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextField(
                  //  keyboardType: TextInputType.,
                  obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.fingerprint),
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(12))),
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileBar()));
                    },
                    child: Container(
                      height: 45,
                      child: const Center(
                          child: Text(
                        "Save",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color.fromARGB(255, 42, 142, 46)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

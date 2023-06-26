import 'package:assignmnet/Pages/profile/profileBar.dart';
import 'package:assignmnet/widgets/textfield.dart';
import 'package:flutter/material.dart';

class EditingProfile extends StatefulWidget {
  const EditingProfile({super.key});

  @override
  State<EditingProfile> createState() => _EditingProfileState();
}

class _EditingProfileState extends State<EditingProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => ProfilePage()));
          },
        ),
        backgroundColor: Colors.grey[300],
        title: Text(
          "Edit Profile",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.grey[300]),
                height: 60,
                width: 280,
                child:const  Center(
                    child: Text(
                  "Update Your Personal Details",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                )),
              ),
              const SizedBox(
                height: 60,
              ),
              LoginText(
                HintText: "Full name",
                controller: TextEditingController(),
                obscureText: false,
                Icons: Icons.person_2_sharp,
              ),
              const SizedBox(
                height: 15,
              ),
              LoginText(
                HintText: "User name",
                controller: TextEditingController(),
                obscureText: false,
                Icons: Icons.alternate_email,
              ),
              const SizedBox(
                height: 15,
              ),
              LoginText(
                HintText: "phone number",
                controller: TextEditingController(),
                obscureText: false,
                Icons: Icons.phone,
              ),
              const SizedBox(
                height: 15,
              ),
              LoginText(
                HintText: "Address",
                controller: TextEditingController(),
                obscureText: false,
                Icons: Icons.location_city,
              ),
              const SizedBox(
                height: 15,
              ),
              LoginText(
                HintText: "Designation",
                controller: TextEditingController(),
                obscureText: false,
                Icons: Icons.work,
              ),
              const SizedBox(
                height: 15,
              ),
              
             
              const SizedBox(
                height: 60,
              ),
              GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => ProfilePage()));
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
                            "Save",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ))),
                    ),
            ],
          ),
        ),
      )),
    );
  }
}

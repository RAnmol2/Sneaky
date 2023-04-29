import 'package:flutter/material.dart';
import 'package:sneakers_app/files/bar/profileBar/editProfile.dart';

class ProfileBar extends StatefulWidget {
  const ProfileBar({super.key});

  @override
  State<ProfileBar> createState() => _ProfileBarState();
}

class _ProfileBarState extends State<ProfileBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Column(
        children: [
          Container(
            color: Colors.black38,
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: SizedBox(
                      height: 85,
                      width: 85,
                      child: Image.asset('lib/image/profile.jpeg'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Anmol Singh',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                const Text(
                  'anmol@gmail.com',
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EditPage()));
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Container(
                      color: Colors.yellow,
                      width: 200,
                      height: 44,
                      child: const Center(
                          child: Text(
                        'Edit Profile',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
          Column(
            children: [
              const Divider(
                height: 5,
                thickness: 1,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const ListTile(
                  leading: Icon(Icons.notifications_active_outlined),
                  title: Text('Notifications'),
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const ListTile(
                  title: Text('Billing Details'),
                  leading: Icon(
                    Icons.account_balance_wallet_outlined,
                  ),
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const ListTile(
                  title: Text('Gifts Voucher'),
                  leading: Icon(Icons.card_giftcard),
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const ListTile(
                  title: Text('About us'),
                  leading: Icon(Icons.person_2_rounded),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: 160,
                height: 44,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                    child: Text(
                  'Log Out',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )),
              ),
              const Divider(
                height: 2,
                thickness: 1,
              ),
            ],
          )
        ],
      ),
    );
  }
}

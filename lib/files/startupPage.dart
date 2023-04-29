import 'package:flutter/material.dart';
import 'package:sneakers_app/files/homePage.dart';


class StartupPage extends StatefulWidget {
  const StartupPage({super.key});

  @override
  State<StartupPage> createState() => _StartupPageState();
}

class _StartupPageState extends State<StartupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        SizedBox(
          height: 50,
        ),
        Center(
          child: SizedBox(
            height: 420,
            width: 300,
            child: Column(
              children: [
                Image.asset('lib/image/logo.jpg'),
                Text('SNEAKY',style: TextStyle(fontSize: 45,color: Colors.white,fontStyle:FontStyle.italic,fontWeight: FontWeight.w800),),
              ],
            )),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            // Center(
            //     child: Text(
            //   "LIVE YOUR ",
            //   style: TextStyle(
            //       fontSize: 32,
            //       fontWeight: FontWeight.bold,
            //       color: Colors.white),
            // )),
            // Center(
            //     child: Text(
            //   "PERFECT ",
            //   style: TextStyle(
            //       fontSize: 32,
            //       fontWeight: FontWeight.bold,
            //       color: Colors.white),
            // )),
            SizedBox(
              height: 18,
            ),
            Center(
                child: Text(
              "Smart, gorgeous & fashionable ",
              style: TextStyle(fontSize: 18, color: Colors.white70),
            )),
          ],
        ),
        const SizedBox(
          height: 80,
        ),
        GestureDetector(
         onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()
          ),
          ),           
          child: ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: Container(
              height: 65,
              width: 200,
              color: Colors.white,
              child: const Center(
                  child: Text(
                'Shop Now',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ),
        const SizedBox(
          height: 70,
        ),
        const Text(
          '@AnmolSingh',
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
        )
      ]),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//import 'package:sneakers_app/files/bar/offersBar/offerList.dart';

class OfferBar extends StatefulWidget {
  const OfferBar({super.key});

  @override
  State<OfferBar> createState() => _OfferbarState();
}

class _OfferbarState extends State<OfferBar> {
final  List<String> _image = [
    'lib/image/7.jpg',
    'lib/image/8.jpg',
    'lib/image/13.jpg',
    'lib/image/14.jpg',
    'lib/image/15.jpg',
  ];

  int ActiveIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Today Special Offers ',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.white),
              child: const Center(
                child: Text(
                  'UP TO 70% OFF',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                      color: Colors.red),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CarouselSlider(
                      items: _image.map((e) {
                        return SizedBox(
                            height: 400,
                            width: double.infinity,
                            child: Image.asset(
                              e,
                            ));
                      }).toList(),
                      options: CarouselOptions(
                        viewportFraction: 1,
                        autoPlay: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            ActiveIndex = index;
                          });
                        },
                      )),
                      
                      SizedBox(
                        height: 50,
                        child: AnimatedSmoothIndicator(activeIndex: ActiveIndex, count: _image.length,
                        effect: const SwapEffect(
                          dotColor: Colors.grey,
                          activeDotColor: Colors.white,
                        ),
                        ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                color: Colors.white,
                height: 40,
                width: double.infinity,
                child: const Center(
                    child: Text('ON TOP BRANDS ',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 223, 23, 9))))),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('lib/image/0.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('lib/image/2.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('lib/image/3.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('lib/image/4.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('lib/image/1.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('lib/image/5.png'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

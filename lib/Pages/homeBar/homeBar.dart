import 'package:Sneaky/Pages/homeBar/shoeList.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'shoe.dart';
import '../cartBar/cartList.dart';



class HomeBar extends StatefulWidget {
  const HomeBar({super.key});

  @override
  State<HomeBar> createState() => _HomeBarState();
}

class _HomeBarState extends State<HomeBar> {
  int _activeIndex = 0;
  final List<String> _imageUL = [
    'lib/image/6.jpg',
    'lib/image/9.jpg',
    'lib/image/10.jpg',
    'lib/image/11.jpg',
    'lib/image/12.jpg',
  ];
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addCartList(shoe);

    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          
              title: Text('Successfully Added !'),
              content: Text('Check your cart'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Scaffold(
              backgroundColor: Colors.grey[300],
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                  
                    //search bar
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: SizedBox(
                        height: 50,
                        child: TextField(
                          cursorColor: Colors.black,
                          //cursorHeight: 25,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                             borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            suffixIcon: const Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            hintText: 'Search...',
                            hintStyle: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                  
                            //suffixIcon:
                          ),
                        ),
                      ),
                    ),
                  
                    // pics
                    Stack(alignment: Alignment.bottomCenter, children: [
                      CarouselSlider(
                        items: _imageUL.map((e) {
                          return SizedBox(
                              height: 200,
                              width: double.infinity,
                              child: Image.asset(e));
                        }).toList(),
                        options: CarouselOptions(
                          viewportFraction: 1,
                          autoPlay: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _activeIndex = index;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: AnimatedSmoothIndicator(
                          activeIndex: _activeIndex,
                          count: _imageUL.length,
                          effect: const ScrollingDotsEffect(
                            dotColor: Colors.grey,
                            activeDotColor: Colors.red,
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 5,
                    ),
                  
                    //hots text
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Hot Picks 🔥',
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'See All',
                            style: TextStyle(
                              color: Color.fromARGB(255, 7, 76, 141),
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  
                    //list of shoes
                    SizedBox(
                      height: 330,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            Shoe shoe = value.getShoeList()[index];
                  
                            return ShoeList(
                              shoe: shoe,
                              onTap: () => addShoeToCart(shoe),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ));
  }
}


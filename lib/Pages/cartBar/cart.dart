import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../homeBar/shoe.dart';
import 'cartList.dart';
import 'cart_items.dart';

class CartBar extends StatefulWidget {
  const CartBar({super.key});

  @override
  State<CartBar> createState() => _CartBarState();
}

class _CartBarState extends State<CartBar> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Scaffold(
              backgroundColor: Colors.grey[300],
              appBar:AppBar(
                title: Text("MY CART",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 22),),
                centerTitle: true,
                backgroundColor: Colors.grey[300],
              ),
              body: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    
                    Expanded(
                      child: ListView.builder(
                          itemCount: value.getCartList().length,
                          itemBuilder: (context, index) {
                            Shoe a = value.getCartList()[index];
                            return CartItems(
                              shoe: a,
                            );
                          }),
                    )
                  ],
                ),
              ),
            ));
  }
}

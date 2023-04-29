import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_app/files/bar/cartBar/cartList.dart';
import 'package:sneakers_app/files/bar/cartBar/cart_items.dart';
import 'package:sneakers_app/models/shoe.dart';

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
              backgroundColor: Colors.black54,
              body: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Container(
                        height: 40,
                        width: 180,
                        color: Colors.white,
                        child: const Center(
                          child: Text(
                            'MY CART',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
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

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../homeBar/shoe.dart';
import 'cartList.dart';



class CartItems extends StatefulWidget {
  Shoe shoe;
  CartItems({super.key, required this.shoe});

  @override
  State<CartItems> createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  void removeItemINCart() {
    Provider.of<Cart>(context, listen: false).removeCartList(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(18)),
      margin: const EdgeInsets.all(4),
      child: ListTile(
        leading: Image.asset(widget.shoe.image),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing:
            IconButton(onPressed: removeItemINCart, icon: const Icon(Icons.delete)),
      ),
    );
  }
}

import 'package:flutter/material.dart';
//import 'package:sneakers_app/models/shoe.dart';
import '../homeBar/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> ShoeList = [
    Shoe(
        name: 'Nike',
        image: 'lib/image/pngwing.com (6).png',
        description: 'Sneakers For Men  (White, Black)',
        price: 'Rs.9999'),
    Shoe(
        name: 'PUMA',
        image: 'lib/image/pngwing.com (14).png',
        description: 'walking shoe Training & Gym Shoes',
        price: 'Rs.12999'),
    Shoe(
        name: 'FILA',
        image: 'lib/image/pngwing.com (15).png',
        description: 'Casuals For Men',
        price: 'Rs.1599'),
    Shoe(
        name: 'Adidas',
        image: 'lib/image/pngwing.com (13).png',
        description: 'comfortable,durable gymwear,',
        price: 'Rs.12979'),
    Shoe(
        name: 'Jordan',
        image: 'lib/image/pngwing.com (5).png',
        description: 'Sport shoes,casual shoe,',
        price: 'Rs.12997'),
  ];

  List<Shoe> cartList = [];

  List<Shoe> getShoeList() {
    return ShoeList;
  }

  List<Shoe> getCartList() {
    return cartList;
  }

  void removeCartList(Shoe shoe) {
    cartList.remove(shoe);
    notifyListeners();
  }

  void addCartList(Shoe shoe) {
    cartList.add(shoe);
    notifyListeners();
  }
}

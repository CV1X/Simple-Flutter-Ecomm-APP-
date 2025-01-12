import 'package:flutter/material.dart';

import 'shoes.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoesShop = [
    Shoe(
        name: "ZoomFreak",
        price: "150",
        imagePath: "lib/images/sneaker1.jpg",
        description: "Very cool sneaker"),
    Shoe(
        name: "Air Jordan",
        price: "220",
        imagePath: "lib/images/sneaker2.jpg",
        description: "Classic basketball sneaker"),
    Shoe(
        name: "Ultra Boost",
        price: "180",
        imagePath: "lib/images/sneaker3.jpg",
        description: "Premium running shoe"),
    Shoe(
        name: "React Elite",
        price: "165",
        imagePath: "lib/images/sneaker5.jpg",
        description: "Modern comfort sneaker"),
    Shoe(
        name: "Pegasus",
        price: "140",
        imagePath: "lib/images/sneaker6.jpg",
        description: "Versatile training shoe"),
    Shoe(
        name: "Metcon",
        price: "175",
        imagePath: "lib/images/sneaker7.jpg",
        description: "Premium fitness trainer")
  ];

  //list of items in users cart
  List<Shoe> userCart = [];

  // get list of items for sale
  List<Shoe> getShoeList() {
    return shoesShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}

import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Zoom FREAK",
      price: "236",
      description: "The forwad-thinking design of his latest signature shoe.",
      imagePath: "lib/images/nike1.jpg",
    ),
    Shoe(
      name: "Air Jordans",
      price: "220",
      description: "The forwad-thinking design of his latest signature shoe.",
      imagePath: "lib/images/nike2.jpg",
    ),
    Shoe(
      name: "KD Treys",
      price: "240",
      description: "The forwad-thinking design of his latest signature shoe.",
      imagePath: "lib/images/nike3.png",
    ),
    Shoe(
      name: "Kyrie 6",
      price: "196",
      description: "The forwad-thinking design of his latest signature shoe.",
      imagePath: "lib/images/nike4.jpg",
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserList() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}

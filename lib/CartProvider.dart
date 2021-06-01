import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  List<CartItem> items = [];

  void addToCart(String itemName, String price) {
    final addItem = CartItem(itemName, price);
    items.add(addItem);
    notifyListeners();
  }

  //TODO: Add a function that will calculate the total price of itmes in the cart

  //TODO: Add a function that will enable a user to remove an item from the cart
}

class CartItem {
  String itemName;
  String price;

  CartItem(this.itemName, this.price);
}

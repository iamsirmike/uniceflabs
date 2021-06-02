import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CartProvider extends ChangeNotifier {
  List<CartItem> items = [];

  void addToCart(String itemName, int price) {
    final addItem = CartItem(itemName, price);
    items.add(addItem);
    notifyListeners();
  }

  //TODO: Add a function that will calculate the total price of itmes in the cart

  calculatTotalPrice() {
    int sum = 0;
    for (var i = 0; i < items.length; i++) {
      sum += items[i].price;
      notifyListeners();
    }
    return sum;
  }

  //TODO: Add a function that will enable a user to remove an item from the cart

  removeCartItem(int index) {
    items.remove(items[index]);
    notifyListeners();
  }

  Future getUserData() async {
    final response = await http.get(Uri.parse('https://randomuser.me/api'));
    if (response == null) {
      print('An error occured, please try agaon later');
      return;
    }
    return response.body;
  }
}

class CartItem {
  String itemName;
  int price;

  CartItem(this.itemName, this.price);
}

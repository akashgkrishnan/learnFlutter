import 'package:flutter/material.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem(
      {@required this.id,
      @required this.title,
      @required this.quantity,
      @required this.price});
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items;

  Map<String, CartItem> get _items {
    return {..._items};
  }

  void addItem(String productId, String price, String title) {
    if (_items.containsKey(productId)) {} else {}
  }
}

import 'package:VSB/providers/bragdarefur.dart';
import 'package:flutter/material.dart';

class CartItem {
  String id;
  String title;
  IceType iceType;
  IceSize size;
  int quantity = 1;
  int price;
  List<String> nammi;

  CartItem({
    @required String id,
    @required String title,
    @required IceType iceType,
    @required IceSize size,
    @required int price,
    int quantity,
    @required List<String> nammi,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  void addItem(String id, String title, IceType iceType, IceSize size,
      int quantity, int price, List<String> nammi) {
    if (_items.containsKey('$id${size.toString()}$price${nammi.join()}') &&
        _items.length > 0) {
      _items.update(
          '$id${size.toString()}$price${nammi.join()}',
          (existingProduct) => CartItem(
                id: existingProduct.id,
                title: existingProduct.title,
                size: existingProduct.size,
                iceType: existingProduct.iceType,
                price: existingProduct.price,
                quantity: existingProduct.quantity + quantity,
                nammi: existingProduct.nammi,
              ));
    } else {
      _items.putIfAbsent(
        '$id${size.toString()}$price${nammi.join()}',
        () => CartItem(
          id: '$id${size.toString()}$price${nammi.join()}',
          title: title,
          iceType: iceType,
          size: size,
          price: price,
          quantity: quantity,
          nammi: nammi,
        ),
      );
    }
    notifyListeners();
  }
}

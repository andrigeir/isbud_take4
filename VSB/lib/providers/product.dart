import 'package:flutter/material.dart';

abstract class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  int price;
  final String imageUrl;

  Product({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.imageUrl,
  });

  int get getPrice {
    return price;
  }
}

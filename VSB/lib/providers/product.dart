import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  double price;
  final String imageUrl;

  Product({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.imageUrl,
  });

  double get getPrice {
    return price;
  }
}

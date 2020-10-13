import 'package:flutter/material.dart';

class CurrentProduct with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  String size;
  String iceCream;

  CurrentProduct(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.price,
      @required this.imageUrl,
      this.size = 'Small',
      this.iceCream = 'Gamli'});
}

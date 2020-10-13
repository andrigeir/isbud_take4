import 'package:flutter/rendering.dart';

import '../providers/product.dart';

class Bragdarefur extends Product {
  List<String> nammi;
  Map<String, double> size = {
    "Kids": 1000.00,
    "Small": 1250.00,
    "Medium": 1500,
    "Big": 1800,
  };

  Bragdarefur({
    id,
    title,
    description,
    price,
    imageUrl,
    this.nammi,
  }) : super(
            id: id,
            title: title,
            description: description,
            price: price,
            imageUrl: imageUrl);

  @override
  double get getPrice {
    return this.price;
  }
}

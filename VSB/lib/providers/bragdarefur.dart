import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

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
    @required this.nammi,
  }) : super(
            id: id,
            title: title,
            description: description,
            price: price,
            imageUrl: imageUrl);

  void setPrice(String key, List<String> nammi) {
    double extra = 0;
    if (nammi.length > 3) {
      extra = 140.00;
    }
    price = size[key] + extra;
    notifyListeners();
  }
}

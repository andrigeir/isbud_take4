import 'package:VSB/providers/bragdarefur.dart';
import 'package:flutter/material.dart';

import 'product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Bragdarefur(
      id: 'p1',
      title: 'Bragðarefur',
      description: 'Bragðarefur',
      price: 29,
      imageUrl: 'assets/images/bragdarebbi.jpg',
      nammi: [],
    ),
    Bragdarefur(
      id: 'p2',
      title: 'Ís í brauði',
      description: 'Ís í brauði',
      price: 29,
      imageUrl: 'assets/images/isibraudi.jpg',
      nammi: [],
    ),
    Bragdarefur(
      id: 'p3',
      title: 'Ís í boxi',
      description: 'A red shirt - it is pretty red!',
      price: 29,
      imageUrl: 'assets/images/isiboxi.jpg',
      nammi: [],
    ),
    Bragdarefur(
      id: 'p4',
      title: 'Shake',
      description: 'A red shirt - it is pretty red!',
      price: 29,
      imageUrl: 'assets/images/shake.jpg',
      nammi: [],
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  String findImgById(String id) {
    return _items.firstWhere((prod) => prod.id == id).imageUrl;
  }
}

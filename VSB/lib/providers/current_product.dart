import 'package:VSB/screens/bragdarefur_screen.dart';
import 'package:flutter/material.dart';
import 'product.dart';

class CurrentProduct with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  IceSize size;

  CurrentProduct(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.price,
      @required this.imageUrl,
      this.size = IceSize.small});

  CurrentProduct get currentProduct {
    return currentProduct;
  }

  void changeSize(List<bool> sizeVec) {
    if (sizeVec[1]) {
      currentProduct.size = IceSize.kids;
    } else if (sizeVec[2]) {
      currentProduct.size = IceSize.small;
    } else if (sizeVec[3]) {
      currentProduct.size = IceSize.medium;
    } else if (sizeVec[2]) {
      currentProduct.size = IceSize.large;
    }
    print(sizeVec);
    notifyListeners();
  }
}

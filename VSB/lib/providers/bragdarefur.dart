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
  IceSize _size = IceSize.kids;
  IceType _icetype = IceType.gamli;

  Bragdarefur({
    id,
    title,
    description,
    price,
    iceType,
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

  IceSize get getSize {
    return _size;
  }

  IceType get getIceType {
    return _icetype;
  }

  void setSize(int index) {
    if (index == 0) {
      _size = IceSize.kids;
    } else if (index == 1) {
      _size = IceSize.small;
    } else if (index == 2) {
      _size = IceSize.medium;
    } else if (index == 3) {
      _size = IceSize.large;
    }
    notifyListeners();
  }

  void setIceType(int index) {
    if (index == 0) {
      _icetype = IceType.gamli;
    } else if (index == 1) {
      _icetype = IceType.nyi;
    } else if (index == 2) {
      _icetype = IceType.vegan;
    }
    notifyListeners();
  }
}

enum IceSize {
  kids,
  small,
  medium,
  large,
}
enum IceType {
  gamli,
  nyi,
  vegan,
}

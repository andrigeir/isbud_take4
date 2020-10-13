import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  var _counter = 0;
  IceSize _size = IceSize.kids;

  int get getCounter {
    return _counter;
  }

  IceSize get getSize {
    return _size;
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

  void setCounter() {
    _counter = 6;
    notifyListeners();
  }
}

enum IceSize { kids, small, medium, large }

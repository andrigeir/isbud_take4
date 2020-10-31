import '../providers/product.dart';

class Bragdarefur extends Product {
  List<String> _nammi = [];
  Map<String, int> size = {
    "Kids": 1000,
    "Small": 1250,
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
    nammi,
  }) : super(
            id: id,
            title: title,
            description: description,
            price: price,
            imageUrl: imageUrl);

  void setPrice(String key, List<String> _nammi) {
    int extra = 0;
    if (_nammi.length > 3) {
      extra = 140;
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

  List<String> get getNammi {
    return _nammi;
  }

  void addNammi(String nammiString) {
    if (_nammi.length < 4) {
      _nammi.add(nammiString);
      notifyListeners();
    }
  }

  void removeNammi(String nammiString) {
    _nammi.remove(nammiString);
    notifyListeners();
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

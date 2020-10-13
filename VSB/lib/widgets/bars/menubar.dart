import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuBar extends StatefulWidget {
  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  int _currentIndex = 1;
  // List<String> _pages = <String>[
  //   CartScreen.routeName,
  //   ProductsOverviewScreen.routeName,
  //   OrdersScreen.routeName,
  //   UserProductsScreen.routeName,
  //   EditProductScreen.routeName,
  // ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.shopping_cart),
          title: new Text('My Cart'),
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.person),
          title: new Text('Profile'),
        )
      ],
      // onTap: (index) {
      //   setState(() {
      //     _currentIndex = index;
      //     Navigator.of(context).pushNamed(_pages[index]);
      //   });},
    );
  }
}

import '../widgets/bars/menubar.dart';
import '../widgets/bars/topbar.dart';
import 'package:flutter/material.dart';

import '../widgets/grids/products_grid.dart';

class ProductOverviewScreen extends StatelessWidget {
  static const routeName = '/product_overview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(),
      body: ProductsGrid(),
      bottomNavigationBar: MenuBar(),
    );
  }
}

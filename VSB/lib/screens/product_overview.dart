import '../widgets/bars/menubar.dart';
import '../widgets/bars/topbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';
import '../widgets/grid_items/product_item.dart';
import '../widgets/grids/products_grid.dart';

class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _productData = Provider.of<Products>(context);
    final _products = _productData.items;
    return Scaffold(
      appBar: TopBar(),
      body: ProductsGrid(),
      bottomNavigationBar: MenuBar(),
    );
  }
}

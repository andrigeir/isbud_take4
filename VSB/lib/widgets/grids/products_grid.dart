import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/products.dart';
import '../grid_items/product_item.dart';

class ProductsGrid extends StatelessWidget {
  ProductsGrid();

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    return Container(
      padding: EdgeInsets.all(10),
      color: Theme.of(context).primaryColor,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: EdgeInsets.only(top: 15, bottom: 25),
                  height: 120.0,
                  child: new Image.asset(
                    'assets/images/logo-white.png',
                    height: 60.0,
                  ),
                ),
              ],
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, i) => ChangeNotifierProvider.value(
                value: products[i],
                child: ProductItem(),
              ),
              childCount: products.length,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 5 / 6,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
          ),
        ],
      ),
    );
  }
}

import 'package:VSB/widgets/product_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/bars/topbar.dart';
import '../widgets/bars/back_appbar.dart';
import '../providers/products.dart';
import '../providers/product.dart';

class BragdarefurScreen extends StatelessWidget {
  static const routeName = '/bragdarefur';
  @override
  Widget build(BuildContext context) {
    final passedId = ModalRoute.of(context).settings.arguments;
    final loadedProduct = Provider.of<Products>(context).findById(passedId);
    List<String> _currentProduct = [
      '${loadedProduct.id}${DateTime.now().toIso8601String()}',
      loadedProduct.title,
      loadedProduct.description,
      loadedProduct.price.toString(),
      loadedProduct.imageUrl,
      'small'
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: TopBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            BackAppBar(_currentProduct[5]),
            Padding(
              padding: EdgeInsets.all(5),
            ),
            ProductImage(loadedProduct.imageUrl),
            FloatingActionButton.extended(
              label: Text(_currentProduct[3]),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

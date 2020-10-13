import 'package:VSB/widgets/product_image_widget.dart';
import 'package:VSB/widgets/togglebutton.dart';
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
    IceSize _size = IceSize.kids;
    List<bool> selection = List.generate(3, (_) => false);

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: TopBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            BackAppBar(loadedProduct.title),
            Padding(
              padding: EdgeInsets.all(5),
            ),
            ProductImage(loadedProduct.imageUrl),
            MyToggleButton(),
          ],
        ),
      ),
    );
  }
}

enum IceSize { kids, small, medium, large }

extension SizeExtension on IceSize {
  String get sizetext {
    switch (this) {
      case IceSize.kids:
        return 'Kids';
      case IceSize.small:
        return 'Small';
      case IceSize.medium:
        return 'Medium';
      case IceSize.large:
        return 'Large';
      default:
        return 'Small';
    }
  }
}

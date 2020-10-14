import 'package:VSB/providers/counter.dart';
import 'package:VSB/widgets/counter_widget.dart';
import 'package:VSB/widgets/product_image_widget.dart';
import 'package:VSB/widgets/togglebutton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/bars/topbar.dart';
import '../widgets/bars/back_appbar.dart';
import '../providers/products.dart';
import '../providers/counter.dart';

class BragdarefurScreen extends StatelessWidget {
  static const routeName = '/bragdarefur';

  @override
  Widget build(BuildContext context) {
    var _size = Provider.of<Counter>(context).getSize;
    final passedId = ModalRoute.of(context).settings.arguments;
    final loadedProduct = Provider.of<Products>(context).findById(passedId);

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
            Center(
              child: Text('Please choose size'),
            ),
            MyToggleButton(),
            CounterWidget(),
            Center(
              child: Text(
                '$_size',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
